import 'dart:async';

import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/src/dart/constant/value.dart';
import 'package:analyzer/src/dart/element/element.dart';
import 'package:nucleoid_built/model_mysql.dart';
import 'package:source_gen/source_gen.dart';

class ModelMysqlGenerator extends Generator {
  @override
  Future<String> generate(LibraryReader library, _) async {
    var result = StringBuffer();

    for (var element in library.allElements.whereType<ClassElement>()) {
      if (element.allSupertypes.any((interfaceType) => interfaceType.element.name == 'BuiltModelMySQL')) {
        // Element Model
        var elementNameModel = element.name.substring(0, element.name.length - 5);
        var elementNameQuery = [element.name.substring(0, element.name.length - 5), 'Query'].join();
        var elementNameField = [element.name.substring(0, element.name.length - 5), 'Field'].join();

        var generic = element.allSupertypes
            .firstWhere((element) => element.element.name == 'BuiltModelMySQL', orElse: () => null)
            .typeArguments
            .first;
        var fields = <FieldMySQL>[];

        if (generic != null) {
          var genericElement = generic.element;
          if (genericElement is ClassElementImpl) {
            fields.addAll(_listFieldsFromElement(genericElement));
          }
        }

        fields.addAll(_listFieldsFromElement(element));

        result.writeln('// Code for "$element"');
        result.writeln('class $elementNameModel implements ${element.name} {');
        result.writeln();
        var constructorFields = <String>[];
        var bodyFields = <String>[];

        fields.forEach((el) {
          constructorFields.add('this.${el.aliasName}');
          bodyFields.add('final ${el.type.type.name} ${el.aliasName};');
        });

        result.writeln('const $elementNameModel(\{${constructorFields.join(',')}\});\n');

        result.writeln(bodyFields.join('\n'));

        var primaryKeyList = fields.where((el) => el.primaryKey ?? false);

        if (primaryKeyList.isNotEmpty) {
          result.writeln();

          result.writeln('static Future<$elementNameModel> by${primaryKeyList.map((e) => [
                e.aliasName.substring(0, 1).toUpperCase(),
                e.aliasName.substring(1)
              ].join()).join()}(${primaryKeyList.map((e) => [e.type.type.name, e.aliasName].join(' ')).join(',')}) async {');

          result.writeln(
              'var results = await ${element.name}.factory.query(\'SELECT * FROM `\$\{${element.name}.table\}\` WHERE ${primaryKeyList.map((e) => [
                    '`${e.name}`',
                    '=',
                    '?'
                  ].join(' ')).join(' AND ')} LIMIT 1\', [${primaryKeyList.map((e) => e.aliasName).join(',')}]);');

          result.writeln('if (results.isNotEmpty) {');
          result.writeln('var json = results.first;');
          result.writeln();
          result.writeln('return $elementNameModel.fromJSON(json.fields);');

          result.writeln('} else {');
          result.writeln('return null;');
          result.writeln('}');
          result.writeln('}');
        }

        result.writeln(
            'static Future<List<$elementNameModel>> search({@required $elementNameQuery query, int offset, int count, OrderMySQL<$elementNameField> order, List<$elementNameField> select,}) => searchJoin<$elementNameModel>(query: query, builder: (json) => $elementNameModel.fromJSON(json), offset: offset, count: count, order: order, select: select,);');

        result.writeln();
        result.writeln(
            'static Future<List<T>> searchJoin<T>({@required $elementNameQuery query, @required FunctionBuilderFromJson<T> builder, int offset, int count, OrderMySQL<FieldMySQL> order, List<FieldMySQL> select, List<ModelQueryMySQL> joinList, JoinTypeMySQL joinType, String alias,}) async {');

        result.writeln(
            'final modelQueryMySQL = ModelQueryMySQL(table: ${element.name}.table, query: query, offset: offset, count: count, order: order, select: select, joinList: joinList, joinType: joinType, alias: alias);');

        result.writeln(
            'var results = await ${element.name}.factory.query(modelQueryMySQL.selectSql, modelQueryMySQL.selectValues);');

        result.writeln('return [for (var row in results) builder(row.fields)];');
        result.writeln('}');
        result.writeln();
        result.writeln(
            'factory $elementNameModel.fromJSON(Map<String, dynamic> json, [String aliasTable]) {final prefix = aliasTable != null ? \'\${aliasTable}__\' : \'\'; return $elementNameModel(${_inputFieldsBuildConstructorFromMySQL(fields)});}');

        result.writeln('}');
        result.writeln();

        // Element Query
        result.writeln('class $elementNameQuery extends QueryMySQL {');

        result.writeln(
            '$elementNameQuery.list(String connector, List<$elementNameQuery> list):super.list(connector, list);');
        result.writeln();

        result.writeln(
            'factory $elementNameQuery(String connector, String operator, \{${_inputFieldsBuildConstructor(fields)}\}) => $elementNameQuery.alias(connector, operator, null, ${fields.map((el) => '${el.aliasName}: ${el.aliasName}').join(',')});');
        result.writeln();

        result.writeln(
            '$elementNameQuery.alias(String connector, String operator, String alias, \{${_inputFieldsBuildConstructor(fields)}\}) : ${_queryBuildSuperConstructor(fields, '\$connector')};');
        result.writeln();

        result.writeln(
            '$elementNameQuery.fields(String connector, String operator, String alias, \{${_inputFieldsBuildConstructor(fields, true)}\}) : ${_queryBuildSuperConstructor(fields, '\$connector', true)};');

        result.writeln('}');

        // Element Fields
        result.writeln('class $elementNameField extends FieldMySQL {');
        result.writeln('const $elementNameField(String name):super(name: name);');

        result.writeln('static const ALL = [${fields.map((e) => e.aliasName).join(',')}];');
        fields.forEach((el) {
          result.writeln('static const ${el.aliasName} = $elementNameField(\'${el.name}\');');
        });
        result.writeln('}');
      }
    }
    return result.toString();
  }

  String _queryBuildSuperConstructor(List<FieldMySQL> fields, String connector, [bool fieldType = false]) {
    if (fieldType) {
      return 'super([${fields.map((el) => 'if (${el.aliasName} != null) \'`${el.name}` \$operator \${alias != null ? \'\$alias.\' : \'\'}\${${el.aliasName}.name}\'').join(',')}].join(\' $connector \'))';
    } else {
      return 'super([${fields.map((el) => 'if (${el.aliasName} != null) \'\${alias != null ? \'\$alias.\' : \'\'}`${el.name}` \$operator ?\'').join(',')}].join(\' $connector \'), [${fields.map((el) => 'if (${el.aliasName} != null) ${el.aliasName}').join(',')}])';
    }
  }

  String _inputFieldsBuildConstructor(List<FieldMySQL> fields, [bool fieldType = false]) {
    if (fieldType) {
      return fields.map((el) => 'FieldMySQL ${el.aliasName}').join(',');
    } else {
      return fields.map((el) => '${el.type.type.name} ${el.aliasName}').join(',');
    }
  }

  String _inputFieldsBuildConstructorFromMySQL(List<FieldMySQL> fields) {
    return fields.map((el) => _mapperFieldFromMySQL(el)).join(',');
  }

  String _mapperFieldFromMySQL(FieldMySQL field) {
    if (field.type == FieldType.bool) {
      return '${field.aliasName}: FieldType.bool.fromMySQL(json[\'\${prefix}${field.name}\'])';
    } else if (field.type == FieldType.text || field.type == FieldType.mediumtext || field.type == FieldType.longtext) {
      return '${field.aliasName}: json[\'\${prefix}${field.name}\'].toString()';
    } else {
      return '${field.aliasName}: json[\'\${prefix}${field.name}\']';
    }
  }

  List<FieldMySQL> _listFieldsFromElement(ClassElementImpl element) {
    return element
        .getField('fields')
        ?.computeConstantValue()
        ?.toListValue()
        ?.map(_mapperFieldMySQLDartObject)
        ?.toList() ?? [];
  }

  FieldMySQL _mapperFieldMySQLDartObject(DartObject dartObject) {
    try {
      return FieldMySQL(
        name: dartObject.getField('name').toStringValue(),
        alias: dartObject.getField('alias').toStringValue(),
        type: _mapperFieldTypeDartObject(dartObject.getField('type')),
        index: dartObject.getField('index').toBoolValue(),
        defaultValue: dartObject.getField('defaultValue').toStringValue(),
        autoIncrement: dartObject.getField('autoIncrement').toBoolValue(),
        primaryKey: dartObject.getField('primaryKey').toBoolValue(),
      );
    } catch (_) {
      return null;
    }
  }

  FieldType _mapperFieldTypeDartObject(DartObjectImpl dartObject) {
    var obj = dartObject.fields.values.first.fields;

    return FieldType(
      obj['name'].toStringValue(),
      FieldTypeDart(obj['type'].fields.values.first.fields['name'].toStringValue()),
      obj['size'].toIntValue(),
    );
  }
}
