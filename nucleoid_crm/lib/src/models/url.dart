import 'package:nucleoid/factory.dart';
import 'package:nucleoid_built/model_mysql.dart';
import 'package:nucleoid/nucleoid.dart';

part 'url.g.dart';

abstract class UrlModelMySQL extends BuiltModelMySQL<CrmBaseFields> {
  static const String table = 'url';
  static MySQLObjectFactory factory = FactoryNucleoid.get(table);

  static const List<FieldMySQL> fields = [
    FieldMySQL(name: 'domain', type: FieldType.int(2), index: true, defaultValue: '0'),
    FieldMySQL(name: 'url', type: FieldType.varchar(128), index: true),
    FieldMySQL(name: 'category_id', type: FieldType.int(12), defaultValue: '0'),
    FieldMySQL(name: 'page_id', type: FieldType.int(12), defaultValue: '1', index: true),
    FieldMySQL(name: 'title', type: FieldType.varchar(256)),
    FieldMySQL(name: 'h1', type: FieldType.varchar(256)),
    FieldMySQL(name: 'keywords', type: FieldType.varchar(256)),
    FieldMySQL(name: 'description', type: FieldType.varchar(256)),
    FieldMySQL(name: 'image', type: FieldType.varchar(256)),
  ];
}