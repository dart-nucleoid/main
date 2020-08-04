import 'package:nucleoid_built/model_mysql.dart';

abstract class CrmFieldsDataBase {
  static const List<FieldMySQL> fields = [
    FieldMySQL(name: 'id', type: FieldType.int(12), primaryKey: true, autoIncrement: true, nullable: false),
    FieldMySQL(name: 'edit', type: FieldType.datetime, index: true, nullable: true),
    FieldMySQL(name: 'disabled', type: FieldType.bool, index: true, defaultValue: false),
    FieldMySQL(name: 'protected', type: FieldType.bool, defaultValue: false),
  ];
}