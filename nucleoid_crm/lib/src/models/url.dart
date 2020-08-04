import 'package:nucleoid/factory.dart';
import 'package:nucleoid/nucleoid.dart';
import 'package:nucleoid_built/model_mysql.dart';

import 'crm_base_fields.dart';

part 'url.g.dart';

abstract class UrlModelMySQL extends BuiltModelMySQL<CrmFieldsDataBase> {
  static const String table = 'url';
  static MySQLDataBase db = FactoryNucleoid.get(table);

  static const List<FieldMySQL> fields = [
    FieldMySQL(name: 'domain', type: FieldType.int(2), index: true, defaultValue: 0),
    FieldMySQL(name: 'url', type: FieldType.varchar(128), index: true),
    FieldMySQL(name: 'category_id', type: FieldType.int(12), defaultValue: 0, index: true),
    FieldMySQL(name: 'page_id', type: FieldType.int(12), defaultValue: 1, index: true),
    FieldMySQL(name: 'title', type: FieldType.varchar(256), defaultValue: ''),
    FieldMySQL(name: 'h1', type: FieldType.varchar(256), defaultValue: ''),
    FieldMySQL(name: 'keywords', type: FieldType.varchar(256), defaultValue: ''),
    FieldMySQL(name: 'description', type: FieldType.varchar(256), defaultValue: ''),
    FieldMySQL(name: 'image', type: FieldType.varchar(256), defaultValue: ''),
    FieldMySQL(name: 'noindex', type: FieldType.bool, defaultValue: false),
  ];
}
