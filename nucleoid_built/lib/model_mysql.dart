import 'dart:core';
import 'dart:core' as core;

import 'package:meta/meta.dart';

typedef FunctionBuilderFromJson<T> = T Function(Map<String, dynamic> json);

abstract class _FieldTypeDartBase {
  final String name;

  const _FieldTypeDartBase(this.name);

  @override
  bool operator ==(other) => identical(this, other) || other is FieldTypeDart && name == other.name;
}

class FieldTypeDart extends _FieldTypeDartBase {
  const FieldTypeDart(String name) : super(name);

  @override
  String toString() => 'FieldTypeDart.${name.toLowerCase()}';

  static const int = FieldTypeDart('int');
  static const bool = FieldTypeDart('bool');
  static const datetime = FieldTypeDart('DateTime');
  static const string = FieldTypeDart('String');
}

abstract class _FieldTypeBase {
  final String name;
  final int size;
  final FieldTypeDart type;

  const _FieldTypeBase(this.name, this.type, [this.size]);

  @override
  bool operator ==(other) => identical(this, other) || other is _FieldTypeBase && name == other.name;

  @override
  String toString() => '_FieldTypeBase(name: $name, size: $size, type: $type)';
}

class FieldType extends _FieldTypeBase {
  const FieldType(String name, FieldTypeDart type, [int size]) : super(name, type, size);

  const FieldType.tinyint([int size]) : super('tinyint(${size ?? ''})', FieldTypeDart.int, size);

  const FieldType.int([int size]) : super('int(${size ?? ''})', FieldTypeDart.int, size);

  const FieldType.varchar([int size]) : super('varchar(${size ?? ''})', FieldTypeDart.string, size);

  static const bool = FieldType('tinyint(1)', FieldTypeDart.bool, 1);
  static const text = FieldType('text', FieldTypeDart.string);
  static const mediumtext = FieldType('mediumtext', FieldTypeDart.string);
  static const longtext = FieldType('longtext', FieldTypeDart.string);
  static const datetime = FieldType('datetime', FieldTypeDart.datetime);

  dynamic fromMySQL(dynamic value) {
    if (type == FieldTypeDart.bool) {
      if (value == 1) {
        return true;
      } else if (value == 0) {
        return false;
      } else {
        return null;
      }
    } else {
      return value;
    }
  }

  dynamic toMySQL(core.bool value) {
    if (value == true) {
      return 1;
    } else if (value == false) {
      return 0;
    } else {
      return null;
    }
  }

  factory FieldType.fromString(dynamic input) {
    final string = input.toString();

    final tinyintRegExp = RegExp(r"^tinyint\(\d+\)$", caseSensitive: false, multiLine: false);
    final intRegExp = RegExp(r"^int\(\d+\)$", caseSensitive: false, multiLine: false);
    final varcharRegExp = RegExp(r"^varchar\(\d+\)$", caseSensitive: false, multiLine: false);

    final expInt = RegExp(r"[^0-9]+");

    if (string == text.name) {
      return FieldType.text;
    } else if (string == bool.name) {
      return FieldType.bool;
    } else if (string == mediumtext.name) {
      return FieldType.mediumtext;
    } else if (string == longtext.name) {
      return FieldType.longtext;
    } else if (string == datetime.name) {
      return FieldType.datetime;
    } else if (tinyintRegExp.hasMatch(string)) {
      return FieldType.tinyint(int.parse(string.replaceAll(expInt, '')));
    } else if (intRegExp.hasMatch(string)) {
      return FieldType.int(int.parse(string.replaceAll(expInt, '')));
    } else if (varcharRegExp.hasMatch(string)) {
      return FieldType.varchar(int.parse(string.replaceAll(expInt, '')));
    }

    throw Exception('FieldType not implemented: $string');
  }
}

class FieldMySQL {
  final String name;
  final String alias;
  final String aliasTable;
  final FieldType type;
  final dynamic defaultValue;
  final bool index;
  final bool autoIncrement;
  final bool primaryKey;
  final bool nullable;

  const FieldMySQL({
    this.name,
    String alias,
    this.aliasTable,
    this.type,
    this.defaultValue,
    this.index = false,
    this.autoIncrement = false,
    this.primaryKey = false,
    this.nullable = false,
  }) : alias = alias ?? name;

  FieldMySQL table(String aliasTable) => FieldMySQL(
        name: name,
        alias: alias,
        aliasTable: aliasTable,
        type: type,
        defaultValue: defaultValue,
        index: index,
        autoIncrement: autoIncrement,
        primaryKey: primaryKey,
        nullable: nullable,
      );

  String get aliasName {
    var first = true;

    return alias.split('_').map((e) {
      if (first) {
        first = false;
        return e;
      } else {
        return [e.substring(0, 1).toUpperCase(), e.substring(1)].join();
      }
    }).join();
  }

  @override
  bool operator ==(other) =>
      identical(this, other) ||
      other is FieldMySQL &&
          name == other.name &&
          alias == other.alias &&
          aliasTable == other.aliasTable &&
          type == other.type &&
          defaultValue == other.defaultValue &&
          index == other.index &&
          autoIncrement != other.autoIncrement &&
          primaryKey != other.primaryKey &&
          nullable != other.nullable;

  @override
  String toString() =>
      'FieldMySQL(name: $name, alias: $alias, aliasTable: $aliasTable, type: $type, defaultValue: $defaultValue, index: $index, autoIncrement: $autoIncrement, primaryKey: $primaryKey, nullable: $nullable)';

  factory FieldMySQL.fromDescribeTable(Map<String, dynamic> object) => FieldMySQL(
        name: object['Field'],
        type: FieldType.fromString(object['Type']),
        nullable: object['Null'] == 'YES',
        defaultValue: object['Default'] == null ? null : object['Default'].toString(),
        autoIncrement: object['Extra'] == 'auto_increment',
        primaryKey: object['Key'] == 'PRI',
      );

  String get defaultValueString {
    if (defaultValue == null) {
      return null;
    } else if (defaultValue is String) {
      return defaultValue;
    } else if (defaultValue is bool) {
      return defaultValue == true ? '1' : '0';
    } else if (defaultValue is num) {
      return defaultValue.toString();
    } else {
      throw Exception('defaultValue type not implemented: $defaultValue');
    }
  }
}

abstract class BuiltModelMySQL<T> {
  static String limitSQL(int offset, int count) {
    if (offset == null && count == null) {
      return '';
    } else if (offset != null && count != null) {
      return 'LIMIT $offset, $count';
    } else if (offset == null && count != null) {
      return 'LIMIT $count';
    } else {
      throw Exception('invalid value: offset: $offset, count: $count');
    }
  }
}

enum JoinTypeMySQL { inner, left, right }

class ModelQueryMySQL {
  final String table;
  final QueryMySQL queryWhere;
  final QueryMySQL querySet;
  final int offset;
  final int count;
  final OrderMySQL<FieldMySQL> order;
  final List<FieldMySQL> select;
  final List<ModelQueryMySQL> joinList;
  final JoinTypeMySQL joinType;
  final String alias;

  const ModelQueryMySQL({
    @required this.table,
    this.queryWhere,
    this.querySet,
    this.offset,
    this.count,
    this.order,
    this.select,
    this.joinList,
    this.joinType,
    this.alias,
  });

  String get selectSql {
    final selectSql = [
      'SELECT',
      if (select == null) alias == null ? '*' : '$alias.*',
      if (select != null)
        select
            .map((e) => [
                  if ((e.aliasTable ?? alias) != null) '${e.aliasTable ?? alias}.',
                  '`${e.name}`',
                  if ((e.aliasTable ?? alias) != null) ' AS ${e.aliasTable ?? alias}__${e.name}',
                ].join())
            .join(', '),
      'FROM',
      '`$table`',
      if (alias != null) 'AS $alias',
      if (joinList != null)
        for (var join in joinList) _selectJoin(join),
      'WHERE',
      queryWhere.sql(alias),
      if (order != null) 'ORDER BY',
      if (order != null) order.sql(alias),
      BuiltModelMySQL.limitSQL(offset, count),
    ].join(' ');

    print('selectSql: $selectSql');

    return selectSql;
  }

  String get updateSql {
    final updateSql = [
      'UPDATE',
      '`$table`',
      'SET',
      querySet.sql(),
      if (queryWhere != null) ...[
        'WHERE',
        queryWhere.sql(),
      ],
      if (order != null) 'ORDER BY',
      if (order != null) order.sql(),
      BuiltModelMySQL.limitSQL(offset, count),
    ].join(' ');

    print('updateSql: $updateSql');

    return updateSql;
  }

  String get insertSql {
    final insertSql = [
      'INSERT INTO',
      '`$table`',
      'SET',
      querySet.sql(),
    ].join(' ');

    print('insertSql: $insertSql');

    return insertSql;
  }

  List<Object> get selectValues {
    final selectValues = joinList?.isNotEmpty == true
        ? [...joinList.map((e) => e.selectValues).where((el) => el != null).toList(), ...queryWhere.values]
        : queryWhere.values;

    print('selectValues: $selectValues');

    return selectValues;
  }

  List<Object> get updateValues {
    final updateValues = [...querySet.values, ...?queryWhere?.values];

    print('updateValues: $updateValues');

    return updateValues;
  }

  List<Object> get insertValues {
    final insertValues = querySet.values;

    print('insertValues: $insertValues');

    return insertValues;
  }

  String _selectJoin(ModelQueryMySQL join) {
    return [
      _mapperJoinType(join.joinType),
      'JOIN',
      '`${join.table}` AS ${join.alias ?? join.table}',
      'ON',
      join.queryWhere.sql(join.alias ?? join.table)
    ].join(' ');
  }

  String _mapperJoinType(JoinTypeMySQL type) {
    switch (type) {
      case JoinTypeMySQL.inner:
        return 'INNER';
      case JoinTypeMySQL.left:
        return 'LEFT';
      case JoinTypeMySQL.right:
        return 'RIGHT';
      default:
        throw Exception('invalidate JoinTypeMySQL: $type');
    }
  }
}

class QueryMySQL {
  final String connector;
  final List<QueryMySQL> list;

  final String _sql;
  final List<Object> _values;

  const QueryMySQL(this._sql, [this._values])
      : list = null,
        connector = null;

  const QueryMySQL.list(this.connector, this.list)
      : _sql = null,
        _values = null;

  String sql([String aliasTable]) {
    if (list == null) {
      return [if (aliasTable != null) aliasTable, _sql].join('.');
    } else {
      return list.map((e) => '(${e.sql(aliasTable)})').join(' $connector ');
    }
  }

  List<Object> get values {
    if (list == null) {
      return _values;
    } else {
      var _list = [];

      list.forEach((e) => _list.addAll(e.values));

      return _list;
    }
  }
}

class OrderMySQL<T> {
  final String sort;
  final List<OrderMySQL<T>> children;
  final List<FieldMySQL> fields;

  const OrderMySQL(this.children)
      : fields = null,
        sort = null;

  const OrderMySQL.asc(this.fields)
      : children = null,
        sort = 'ASC';

  const OrderMySQL.desc(this.fields)
      : children = null,
        sort = 'DESC';

  String sql([String aliasTable]) {
    if (fields != null) {
      return [
        fields.map((e) => [if (aliasTable != null) aliasTable, '`${e.name}`'].join('.')).join(','),
        sort
      ].join(' ');
    } else {
      return children.map((e) => e.sql(aliasTable)).join(',');
    }
  }
}

class ExceptionTableMySQL implements Exception {
  String table;
  String msg;

  ExceptionTableMySQL(this.table, this.msg);

  String toString() => 'ExceptionTableMySQL "$table": $msg';
}
