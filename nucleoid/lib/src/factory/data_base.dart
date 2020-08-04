import 'package:mysql1/mysql1.dart';
import 'package:nucleoid/nucleoid.dart';
import 'package:nucleoid_built/model_mysql.dart';

import 'object_factory.dart';

class MySQLDataBase implements ObjectFactory {
  final String host;
  final int port;
  final String user;
  final String _password;
  final String db;
  final bool useSSL;

  MySQLDataBase({this.host, this.port, this.user, String password, this.db, this.useSSL = false})
      : _password = password;

  MySqlConnection _connection;

  Future _connect() async {
    if (_connection != null) return;
    _connection = await MySqlConnection.connect(ConnectionSettings(
      host: host,
      port: port,
      user: user,
      password: _password,
      db: db,
      useSSL: useSSL,
    ));

    await _connection.query('USE `$db`');
  }

  Future<Results> query(String sql, [List<Object> values]) async {
    await _connect();

    return _connection.query(sql, values);
  }

  static Future<void> testTable(MySQLDataBase db, String table, List<FieldMySQL> fields,
      {@required bool autoCorrect}) async {
    var results = await db.query('CHECK TABLE `$table`;');

    if ((results.first['Msg_type'] as String).toLowerCase() == 'error') {
      if (autoCorrect) {
        return await _createTable(db, table, fields);
      }
      throw ExceptionTableMySQL(table, 'table not exist');
    }

    await _testFieldsTable(db, table, fields, autoCorrect: autoCorrect);

    await _testIndexTable(db, table, fields, autoCorrect: autoCorrect);

    print('[${DateTime.now().toString().padRight(26)}] [${'TEST'.padRight(7)}] [TABLE: ${table.padRight(18)}] OK');
  }

  static Future<void> _createTable(MySQLDataBase db, String table, List<FieldMySQL> fields,
      {engine = 'InnoDB', charset = 'utf8mb4'}) async {
    var queryFields = [
      for (var field in fields) _structFiledTable(field),
      if (fields.any((field) => field.primaryKey))
        ['PRIMARY KEY (', fields.where((field) => field.primaryKey).map((e) => '`${e.name}`').join(','), ')'].join()
    ].join(',');

    var query = "CREATE TABLE IF NOT EXISTS `$table` ($queryFields) ENGINE=$engine DEFAULT CHARSET=$charset;";

//    print(query);

    await db.query(query);

    await _testIndexTable(db, table, fields, autoCorrect: true);

    await testTable(db, table, fields, autoCorrect: false);
  }

  static Future<void> _testFieldsTable(MySQLDataBase db, String table, List<FieldMySQL> fields,
      {@required bool autoCorrect, engine = 'InnoDB', charset = 'utf8mb4'}) async {
    var query = "DESCRIBE `$table`;";

    var results = await db.query(query);

    Set<FieldMySQL> existingFields = Set();

    for (var row in results) {
      var testField = FieldMySQL.fromDescribeTable(row.fields);

      var field = fields.firstWhere((e) => e.name == testField.name, orElse: () => null);

      if (field != null) {
        existingFields.add(field);

        if (testField.type != field.type ||
            testField.nullable != field.nullable ||
            testField.defaultValueString != field.defaultValueString ||
            testField.autoIncrement != field.autoIncrement) {
          if (autoCorrect) {
            await db.query('ALTER TABLE  `$table` CHANGE  `${field.name}` ${_structFiledTable(field)};');
          } else {
            throw ExceptionTableMySQL(
                table,
                'field "${testField.name}" different in model: ${[
                  if (testField.type != field.type) 'type: ${testField.type} != ${field.type}',
                  if (testField.nullable != field.nullable) 'nullable: ${testField.nullable} != ${field.nullable}',
                  if (testField.defaultValueString != field.defaultValueString) 'defaultValue: ${testField.defaultValueString} != ${field.defaultValueString}',
                  if (testField.autoIncrement != field.autoIncrement) 'autoIncrement'
                ].join(', ')}');
          }
        }
      } else {
        throw ExceptionTableMySQL(table, 'field "${row['Field']}" not exist in model');
      }
    }

    await Future.forEach(fields, (field) async {
      if (!existingFields.contains(field)) {
        if (autoCorrect) {
          var query = "ALTER TABLE  `$table` ADD ${_structFiledTable(field)};";
          await db.query(query);
        } else {
          throw ExceptionTableMySQL(table, 'field "${field.name}" not exist in table');
        }
      }
    });
  }

  static String _structFiledTable(FieldMySQL field) {
    return [
      '`${field.name}`',
      field.type.name,
      if (!field.nullable) 'NOT NULL',
      if (field.defaultValue != null) 'DEFAULT \'${field.defaultValueString}\'',
      if (field.autoIncrement) 'auto_increment',
    ].join(' ');
  }

  static Future<void> _testIndexTable(MySQLDataBase db, String table, List<FieldMySQL> fields,
      {@required bool autoCorrect}) async {
    var query = "SHOW INDEX FROM `$table`;";

    var results = await db.query(query);

    Set<FieldMySQL> existingPrimaryFields = Set();
    Set<FieldMySQL> existingIndexFields = Set();

    for (var row in results) {
      if (row['Key_name'] == 'PRIMARY') {
        var field = fields.firstWhere((e) => e.name == row['Column_name'] && e.primaryKey, orElse: () => null);

        if (field != null) {
          existingPrimaryFields.add(field);
        } else {
          throw ExceptionTableMySQL(table, 'primary key "${row['Column_name']}" not exist in model');
        }
      } else if (row['Key_name'] == row['Column_name']) {
        var field = fields.firstWhere((e) => e.name == row['Column_name'] && e.index, orElse: () => null);

        if (field != null) {
          existingIndexFields.add(field);
        } else {
          if (autoCorrect) {
            var query = "ALTER TABLE  `$table` DROP INDEX `${field.name}`;";
            await db.query(query);
          } else {
            throw ExceptionTableMySQL(table, 'index "${row['Column_name']}" not exist in model');
          }
        }
      }
    }

    fields.where((e) => e.primaryKey).forEach((field) {
      if (!existingPrimaryFields.contains(field))
        throw ExceptionTableMySQL(table, 'primary key "${field.name}" not exist in table');
    });

    await Future.forEach(fields.where((e) => !e.primaryKey && e.index), (field) async {
      if (!existingIndexFields.contains(field)) {
        if (autoCorrect) {
          var query = "ALTER TABLE  `$table` ADD INDEX (`${field.name}`);";
          await db.query(query);
        } else {
          throw ExceptionTableMySQL(table, 'index "${field.name}" not exist in table');
        }
      }
    });
  }
}
