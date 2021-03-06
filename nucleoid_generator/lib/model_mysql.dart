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
        var elementNameTest = [element.name.substring(0, element.name.length - 5), 'Test'].join();

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
              'var results = await ${element.name}.db.query(\'SELECT * FROM `\$\{${element.name}.table\}\` WHERE ${primaryKeyList.map((e) => [
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
            'static Future<List<$elementNameModel>> select({@required $elementNameQuery where, int offset, int count, OrderMySQL<$elementNameField> order, List<$elementNameField> select,})'
            ' => selectJoin<$elementNameModel>(where: where, builder: (json) => $elementNameModel.fromJSON(json), offset: offset, count: count, order: order, select: select,);');

        result.writeln();
        result.writeln(
            'static Future<List<T>> selectJoin<T>({@required $elementNameQuery where, @required FunctionBuilderFromJson<T> builder, int offset, int count, OrderMySQL<FieldMySQL> order, List<FieldMySQL> select, List<ModelQueryMySQL> joinList, JoinTypeMySQL joinType, String alias,}) async {'
            'final modelQueryMySQL = ModelQueryMySQL(table: ${element.name}.table, queryWhere: where, offset: offset, count: count, order: order, select: select, joinList: joinList, joinType: joinType, alias: alias);'
            'var results = await ${element.name}.db.query(modelQueryMySQL.selectSql, modelQueryMySQL.selectValues);'
            'return [for (var row in results) builder(row.fields)];'
            '}');
        result.writeln();
        result.writeln(
            'static Future<void> updateQuery({@required $elementNameQuery set, $elementNameQuery where, int offset, int count, OrderMySQL<FieldMySQL> order,}) async {'
            'final modelQueryMySQL = ModelQueryMySQL(table: ${element.name}.table, queryWhere: where, querySet: set, offset: offset, count: count, order: order);'
            'await ${element.name}.db.query(modelQueryMySQL.updateSql, modelQueryMySQL.updateValues);'
            '}');
        result.writeln();
        result.writeln('static Future<void> insertSql({@required $elementNameQuery insert,}) async {'
            'final modelQueryMySQL = ModelQueryMySQL(table: ${element.name}.table,querySet: insert);'
            'final result = await ${element.name}.db.query(modelQueryMySQL.insertSql, modelQueryMySQL.insertValues);'
            '}');
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
            'factory $elementNameQuery(String connector, String operator, \{${_inputFieldsBuildConstructor(fields)}\}) => $elementNameQuery.alias(connector, operator, null, ${[
          ...fields.map((el) => '${el.aliasName}: ${el.aliasName}'),
          ...fields.where((el) => el.nullable).map((el) => '${el.aliasName}ISNULL: ${el.aliasName}ISNULL')
        ].join(',')});');
        result.writeln();

        result.writeln(
            '$elementNameQuery.alias(String connector, String operator, String alias, \{${_inputFieldsBuildConstructor(fields)}\}) : ${_queryBuildSuperConstructor(fields, '\$connector')};');
        result.writeln();

        result.writeln(
            '$elementNameQuery.fields(String connector, String operator, String alias, \{${_inputFieldsBuildConstructor(fields, true)}\}) : ${_queryBuildSuperConstructor(fields, '\$connector', true)};');

        result.writeln();

        result.writeln(
            '$elementNameQuery.set(\{${_inputFieldsBuildConstructor(fields, false, true)}\}) : ${_queryBuildSuperConstructor(fields, '=', false, true)};');

        result.writeln('}');

        // Element Fields
        result.writeln('class $elementNameField extends FieldMySQL {');
        result.writeln('const $elementNameField(String name):super(name: name);');

        result.writeln('static const ALL = [${fields.map((e) => e.aliasName).join(',')}];');
        fields.forEach((el) {
          result.writeln('static const ${el.aliasName} = $elementNameField(\'${el.name}\');');
        });
        result.writeln('}');

        // Test Table
        result.writeln('class $elementNameTest extends FieldMySQL {');
        result.writeln(
            'static Future<void> testTable({@required bool autoCorrect}) => MySQLDataBase.testTable(${element.name}.db, ${element.name}.table, fields, autoCorrect: autoCorrect);');
        result.writeln();
        result.writeln(
            'static const List<FieldMySQL> fields = [${fields.map((e) => _mapperStringFieldMySQL(e)).join(',')}];');
        result.writeln('}');
      }
    }
    return result.toString();
  }

  String _queryBuildSuperConstructor(List<FieldMySQL> fields, String connector,
      [bool fieldType = false, bool isSet = false]) {
    if (isSet) {
      return [
        'super([',
        fields
            .map((el) => [
                  'if (${el.aliasName} != null',
                  if (el.nullable) '|| ${el.aliasName}SETNULL',
                  ')',
                  '\'\`${el.name}` = ?\'',
                ].join(' '))
            .join(','),
        '].join(\' $connector \'), [',
        fields
            .map((el) => [
                  'if (${el.aliasName} != null',
                  if (el.nullable) '|| ${el.aliasName}SETNULL',
                  ')',
                  el.aliasName,
                ].join(' '))
            .join(','),
        '])',
      ].join();
    } else if (fieldType) {
      return [
        'super([',
        fields
            .map((el) => [
                  'if (${el.aliasName} != null) \'`${el.name}` \$operator \${alias != null ? \'\$alias.\' : \'\'}\${${el.aliasName}.name}\'',
                  if (el.nullable)
                    ', if (${el.aliasName} == null && ${el.aliasName}ISNULL != null) \'`${el.name}` \${${el.aliasName}ISNULL ? \'IS NULL\' : \'IS NOT NULL\'}\'',
                ].join(' '))
            .join(','),
        '].join(\' $connector \'))',
      ].join();
    } else {
      return [
        'super([',
        fields
            .map((el) => [
                  'if (${el.aliasName} != null) \'\${alias != null ? \'\$alias.\' : \'\'}`${el.name}` \$operator ?\'',
                  if (el.nullable) ', if (${el.aliasName} == null && ${el.aliasName}ISNULL != null) \'`${el.name}` \${${el.aliasName}ISNULL ? \'IS NULL\' : \'IS NOT NULL\'}\'',
                ].join(' '))
            .join(','),
        '].join(\' $connector \'), [',
        fields.map((el) => 'if (${el.aliasName} != null) ${el.aliasName}').join(','),
        '])',
      ].join();
    }
  }

  String _inputFieldsBuildConstructor(List<FieldMySQL> fields, [bool fieldType = false, bool isSet = false]) {
    if (isSet) {
      return [
        ...fields.map((el) => '${el.type.type.name} ${el.aliasName}'),
        ...fields.where((el) => el.nullable).map((el) => 'bool ${el.aliasName}SETNULL = false')
      ].join(',');
    } else if (fieldType) {
      return [
        ...fields.map((el) => 'FieldMySQL ${el.aliasName}'),
        ...fields.where((el) => el.nullable).map((el) => 'bool ${el.aliasName}ISNULL')
      ].join(',');
    } else {
      return [
        ...fields.map((el) => '${el.type.type.name} ${el.aliasName}'),
        ...fields.where((el) => el.nullable).map((el) => 'bool ${el.aliasName}ISNULL')
      ].join(',');
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
            ?.toList() ??
        [];
  }

  FieldMySQL _mapperFieldMySQLDartObject(DartObject dartObject) {
    try {
      return FieldMySQL(
        name: dartObject.getField('name').toStringValue(),
        alias: dartObject.getField('alias').toStringValue(),
        type: _mapperFieldTypeDartObject(dartObject.getField('type')),
        index: dartObject.getField('index').toBoolValue(),
        defaultValue: dartObject.getField('defaultValue').toStringValue() ??
            dartObject.getField('defaultValue').toBoolValue() ??
            dartObject.getField('defaultValue').toDoubleValue() ??
            dartObject.getField('defaultValue').toIntValue(),
        autoIncrement: dartObject.getField('autoIncrement').toBoolValue(),
        primaryKey: dartObject.getField('primaryKey').toBoolValue(),
        nullable: dartObject.getField('nullable').toBoolValue(),
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

  String _mapperStringFieldMySQL(FieldMySQL fieldMySQL) {
    return [
      'FieldMySQL(',
      [
        if (fieldMySQL.name != null) 'name: \'${fieldMySQL.name}\'',
        if (fieldMySQL.type != null) 'type: ${_mapperStringField(fieldMySQL.type)}',
        if (fieldMySQL.index != null) 'index: ${fieldMySQL.index}',
        if (fieldMySQL.defaultValue != null)
          'defaultValue: ${fieldMySQL.defaultValue is String ? '\'${fieldMySQL.defaultValue}\'' : fieldMySQL.defaultValue}',
        if (fieldMySQL.autoIncrement != null) 'autoIncrement: ${fieldMySQL.autoIncrement}',
        if (fieldMySQL.primaryKey != null) 'primaryKey: ${fieldMySQL.primaryKey}',
        if (fieldMySQL.nullable != null) 'nullable: ${fieldMySQL.nullable}',
      ].join(','),
      ')',
    ].join();
  }

  String _mapperStringField(FieldType fieldType) {
    return 'FieldType(\'${fieldType.name}\', ${fieldType.type.toString()}${fieldType.size != null ? ', ${fieldType.size}' : ''})';
  }
}
