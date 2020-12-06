import 'dart:async';

import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/src/dart/constant/value.dart';
import 'package:analyzer/src/dart/element/element.dart';
import 'package:nucleoid_built/model_sql.dart';
import 'package:source_gen/source_gen.dart';

class SQLModelGenerator extends Generator {
  @override
  Future<String> generate(LibraryReader library, _) async {
    var result = StringBuffer();

    for (var element in library.allElements.whereType<ClassElement>()) {
      if (element.allSupertypes.any((interfaceType) => interfaceType.element.name == 'BuiltModelSQL')) {
        // Element Model
        final bool isAbstractClass = element.getField('builder') == null;
        final String expandedClass = element.allSupertypes.first.element.name;
        final bool isExpanded = expandedClass != 'Object' && expandedClass != 'BuiltModelSQL';

        var elementNameModel = [element.name, 'Model'].join();
        var elementNameBuilder = [element.name, 'Builder'].join();
        var elementNameQuery = [element.name, 'Query'].join();
        var elementNameField = [element.name, 'Field'].join();
        final List<FieldSQL> elementFields = _listFieldsFromElement(element);
        var fields = <FieldSQL>[];

        final lengthSupertypes = element.allSupertypes.length;

        for (var i = lengthSupertypes; i > 0; i-- ) {
          var superElement = element.allSupertypes[i - 1].element;
          if (superElement is ClassElementImpl) {
            fields.addAll(_listFieldsFromElement(superElement));
          }
        }

        fields.addAll(elementFields);

        result.writeln('// Code for "$element"');
        result.writeln('${isAbstractClass ? 'abstract ' : ''}class $elementNameModel ${isExpanded ? 'extends ${expandedClass}Model ':''}{');
        result.writeln();
        var constructorFields = <String>[];
        var superConstructorFields = <String>[];
        var bodyFields = <String>[];

        fields.forEach((el) {
          if (elementFields.contains(el)) {
            constructorFields.add('this.${el.$aliasName}');
            bodyFields.add('final ${el.$type.type.name} ${el.$aliasName};');
          } else {
            constructorFields.add('${el.$type.type.name} ${el.$aliasName}');
            superConstructorFields.add('${el.$aliasName}: ${el.$aliasName}');
          }
        });

        result.writeln('const $elementNameModel(\{${constructorFields.join(',')},\})${superConstructorFields.isNotEmpty ? ' : super(${superConstructorFields.join(',')},)' :''};\n');

        result.writeln(bodyFields.join('\n'));
        result.writeln();
        result.writeln('factory $elementNameModel.fromJSON(Map<String, dynamic> json, [String aliasTable])');
        if (isAbstractClass) {
          result.writeln('{throw UnimplementedError();}');
        } else {
          result.writeln(
              '{final prefix = aliasTable != null ? \'\${aliasTable}__\' : \'\'; return $elementNameModel(${_inputFieldsBuildConstructorFromSQL(fields)});}');
        }

        result.writeln('}');

        result.writeln();

        result.writeln('${isAbstractClass ? 'abstract ' : ''}class $elementNameBuilder {');
        result.writeln('final String table;');
        result.writeln('final SQLDataBase db;');
        result.writeln();
        result.writeln('$elementNameBuilder(this.table, this.db);');

        var primaryKeyList = fields.where((el) => el.$primaryKey ?? false);

        if (primaryKeyList.isNotEmpty) {
          result.writeln();

          result.writeln('Future<$elementNameModel> by${primaryKeyList.map((e) => [
                e.$aliasName.substring(0, 1).toUpperCase(),
                e.$aliasName.substring(1)
              ].join()).join()}(${primaryKeyList.map((e) => [e.$type.type.name, e.$aliasName].join(' ')).join(',')})');

          if (isAbstractClass) {
            result.writeln(';');
          } else {
            result.writeln(' async {');

            result.writeln(
                'var results = await db.query(\'SELECT * FROM `\$\{table\}\` WHERE ${primaryKeyList.map((e) => [
                      '`${e.$name}`',
                      '=',
                      '?'
                    ].join(' ')).join(' AND ')} LIMIT 1\', [${primaryKeyList.map((e) => e.$aliasName).join(',')}]);');

            result.writeln('if (results.isNotEmpty) {');
            result.writeln('var json = results.first;');
            result.writeln();
            result.writeln('return $elementNameModel.fromJSON(json.fields);');

            result.writeln('} else {');
            result.writeln('return null;');
            result.writeln('}');
            result.writeln('}');
          }

          result.writeln();
        }

        result.writeln(
            'Future<List<$elementNameModel>> select({@required $elementNameQuery where, int offset, int count, OrderSQL<$elementNameField> order, List<$elementNameField> select,})');
        if (isAbstractClass) {
          result.writeln(';');
        } else {
          result.writeln(
              ' => selectJoin<$elementNameModel>(where: where, builder: (json) => $elementNameModel.fromJSON(json), offset: offset, count: count, order: order, select: select,);');
        }
        result.writeln();
        result.writeln(
            'Future<List<T>> selectJoin<T>({@required $elementNameQuery where, @required FunctionBuilderFromJson<T> builder, int offset, int count, OrderSQL<FieldSQL> order, List<FieldSQL> select, List<ModelQuerySQL> joinList, JoinTypeSQL joinType, String alias,})');
        if (isAbstractClass) {
          result.writeln(';');
        } else {
          result.writeln(' async {'
              'final modelQuerySQL = ModelQuerySQL(table: table, queryWhere: where, offset: offset, count: count, order: order, select: select, joinList: joinList, joinType: joinType, alias: alias);'
              'var results = await db.query(modelQuerySQL.selectSql, modelQuerySQL.selectValues);'
              'return [for (var row in results) builder(row.fields)];'
              '}');
        }
        result.writeln();

        result.writeln(
            'Future<SQLResults> delete({@required $elementNameQuery where, int offset, int count, OrderSQL<$elementNameField> order,})');
        if (isAbstractClass) {
          result.writeln(';');
        } else {
          result.writeln(
              ' => deleteJoin<$elementNameModel>(where: where, builder: (json) => $elementNameModel.fromJSON(json), offset: offset, count: count, order: order,);');
        }
        result.writeln();
        result.writeln(
            'Future<SQLResults> deleteJoin<T>({@required $elementNameQuery where, @required FunctionBuilderFromJson<T> builder, int offset, int count, OrderSQL<FieldSQL> order, List<ModelQuerySQL> joinList, JoinTypeSQL joinType, String alias,})');
        if (isAbstractClass) {
          result.writeln(';');
        } else {
          result.writeln('{'
              'final modelQuerySQL = ModelQuerySQL(table: table, queryWhere: where, offset: offset, count: count, order: order, joinList: joinList, joinType: joinType, alias: alias);'
              'return db.query(modelQuerySQL.deleteSql, modelQuerySQL.deleteValues);'
              '}');
        }

        result.writeln();

        result.writeln(
            'Future<SQLResults> updateQuery({@required $elementNameQuery set, $elementNameQuery where, int offset, int count, OrderSQL<FieldSQL> order,})');
        if (isAbstractClass) {
          result.writeln(';');
        } else {
          result.writeln('{'
              'final modelQuerySQL = ModelQuerySQL(table: table, queryWhere: where, querySet: set, offset: offset, count: count, order: order);'
              'return db.query(modelQuerySQL.updateSql, modelQuerySQL.updateValues);'
              '}');
        }
        result.writeln();
        result.writeln('Future<SQLResults> insertSql({@required $elementNameQuery insert,})');
        if (isAbstractClass) {
          result.writeln(';');
        } else {
          result.writeln('{'
              'final modelQuerySQL = ModelQuerySQL(table: table,querySet: insert);'
              'return db.query(modelQuerySQL.insertSql, modelQuerySQL.insertValues);'
              '}');
        }
        result.writeln();

        result.writeln('Future<void> testTable({@required bool autoCorrect}) ');
        if (isAbstractClass) {
          result.writeln(';');
        } else {
          result.writeln('=> SQLDataBase.testTable(db, table, fields, autoCorrect: autoCorrect);');
        }

        result.writeln();
        result.writeln(
            'static const List<FieldSQL> fields = [${fields.map((e) => _mapperStringFieldSQL(e)).join(',')}];');

        result.writeln('}');
        result.writeln();

        // Element Query
        result.writeln('class $elementNameQuery extends QuerySQL {');

        result.writeln(
            '$elementNameQuery.list(String connector, List<$elementNameQuery> list):super.list(connector, list);');
        result.writeln();

        result.writeln(
            'factory $elementNameQuery(String connector, String operator, \{${_inputFieldsBuildConstructor(fields)}\}) => $elementNameQuery.alias(connector, operator, null, ${[
          ...fields.map((el) => '${el.$aliasName}: ${el.$aliasName}'),
          ...fields.where((el) => el.$nullable).map((el) => '${el.$aliasName}ISNULL: ${el.$aliasName}ISNULL')
        ].join(',')});');
        result.writeln();

        result.writeln(
            '$elementNameQuery.alias(String connector, String operator, String alias, \{${_inputFieldsBuildConstructor(fields)}\}) : ${_queryBuildSuperConstructor(fields, '\$connector')};');
        result.writeln();

        result.writeln(
            '$elementNameQuery.fields(String connector, String operator, String alias, \{${_inputFieldsBuildConstructor(fields, true)}\}) : ${_queryBuildSuperConstructor(fields, '\$connector', true)};');

        result.writeln();

        result.writeln(
            '$elementNameQuery.set(\{${_inputFieldsBuildConstructor(fields, false, true)}\}) : ${_queryBuildSuperConstructor(fields, ',', false, true)};');

        result.writeln('}');

        // Element Fields
        result.writeln('class $elementNameField extends ${isExpanded ? '${expandedClass}Field': 'FieldSQL'} {');
        result.writeln('const $elementNameField(String name):super(name);');

        result.writeln('static const ALL = [${fields.map((e) => e.$aliasName).join(',')}];');
        fields.forEach((el) {
          result.writeln('static const ${el.$aliasName} = $elementNameField(\'${el.$name}\');');
        });
        result.writeln('}');
      }
    }
    return result.toString();
  }

  String _queryBuildSuperConstructor(List<FieldSQL> fields, String connector,
      [bool fieldType = false, bool isSet = false]) {
    if (isSet) {
      return [
        'super([',
        fields
            .map((el) => [
                  'if (${el.$aliasName} != null',
                  if (el.$nullable) '|| ${el.$aliasName}SETNULL',
                  ')',
                  '\'\`${el.$name}` = ?\'',
                ].join(' '))
            .join(','),
        '].join(\' $connector \'), [',
        fields
            .map((el) => [
                  'if (${el.$aliasName} != null',
                  if (el.$nullable) '|| ${el.$aliasName}SETNULL',
                  ')',
                  el.$aliasName,
                ].join(' '))
            .join(','),
        '])',
      ].join();
    } else if (fieldType) {
      return [
        'super([',
        fields
            .map((el) => [
                  'if (${el.$aliasName} != null) \'`${el.$name}` \$operator \${alias != null ? \'\$alias.\' : \'\'}\${${el.$aliasName}.\$name}\'',
                  if (el.$nullable)
                    ', if (${el.$aliasName} == null && ${el.$aliasName}ISNULL != null) \'`${el.$name}` \${${el.$aliasName}ISNULL ? \'IS NULL\' : \'IS NOT NULL\'}\'',
                ].join(' '))
            .join(','),
        '].join(\' $connector \'))',
      ].join();
    } else {
      return [
        'super([',
        fields
            .map((el) => [
                  'if (${el.$aliasName} != null) \'\${alias != null ? \'\$alias.\' : \'\'}`${el.$name}` \$operator ?\'',
                  if (el.$nullable)
                    ', if (${el.$aliasName} == null && ${el.$aliasName}ISNULL != null) \'`${el.$name}` \${${el.$aliasName}ISNULL ? \'IS NULL\' : \'IS NOT NULL\'}\'',
                ].join(' '))
            .join(','),
        '].join(\' $connector \'), [',
        fields.map((el) => 'if (${el.$aliasName} != null) ${el.$aliasName}').join(','),
        '])',
      ].join();
    }
  }

  String _inputFieldsBuildConstructor(List<FieldSQL> fields, [bool fieldType = false, bool isSet = false]) {
    if (isSet) {
      return [
        ...fields.map((el) => '${el.$type.type.name} ${el.$aliasName}'),
        ...fields.where((el) => el.$nullable).map((el) => 'bool ${el.$aliasName}SETNULL = false')
      ].join(',');
    } else if (fieldType) {
      return [
        ...fields.map((el) => 'FieldSQL ${el.$aliasName}'),
        ...fields.where((el) => el.$nullable).map((el) => 'bool ${el.$aliasName}ISNULL')
      ].join(',');
    } else {
      return [
        ...fields.map((el) => '${el.$type.type.name} ${el.$aliasName}'),
        ...fields.where((el) => el.$nullable).map((el) => 'bool ${el.$aliasName}ISNULL')
      ].join(',');
    }
  }

  String _inputFieldsBuildConstructorFromSQL(List<FieldSQL> fields) {
    return fields.map((el) => _mapperFieldFromSQL(el)).join(',');
  }

  String _mapperFieldFromSQL(FieldSQL field) {
    if (field.$type == FieldType.bool) {
      return '${field.$aliasName}: FieldType.bool.fromSQL(json[\'\${prefix}${field.$name}\'])';
    } else if (field.$type == FieldType.text ||
        field.$type == FieldType.mediumtext ||
        field.$type == FieldType.longtext) {
      return '${field.$aliasName}: json[\'\${prefix}${field.$name}\']?.toString()';
    } else {
      return '${field.$aliasName}: json[\'\${prefix}${field.$name}\']';
    }
  }

  List<FieldSQL> _listFieldsFromElement(ClassElementImpl element) {
    return element
            .getField('fields')
            ?.computeConstantValue()
            ?.toListValue()
            ?.map(_mapperFieldSQLDartObject)
            ?.toList() ??
        [];
  }

  FieldSQL _mapperFieldSQLDartObject(DartObject dartObject) {
    try {
      return FieldSQL(
        dartObject.getField('\$name').toStringValue(),
        alias: dartObject.getField('\$alias').toStringValue(),
        type: _mapperFieldTypeDartObject(dartObject.getField('\$type')),
        index: dartObject.getField('\$index').toBoolValue(),
        defaultValue: dartObject.getField('\$defaultValue').toStringValue() ??
            dartObject.getField('\$defaultValue').toBoolValue() ??
            dartObject.getField('\$defaultValue').toDoubleValue() ??
            dartObject.getField('\$defaultValue').toIntValue(),
        autoIncrement: dartObject.getField('\$autoIncrement').toBoolValue(),
        primaryKey: dartObject.getField('\$primaryKey').toBoolValue(),
        nullable: dartObject.getField('\$nullable').toBoolValue(),
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

  String _mapperStringFieldSQL(FieldSQL fieldSQL) {
    return [
      'FieldSQL(',
      [
        if (fieldSQL.$name != null) '\'${fieldSQL.$name}\'',
        if (fieldSQL.$type != null) 'type: ${_mapperStringField(fieldSQL.$type)}',
        if (fieldSQL.$index != null) 'index: ${fieldSQL.$index}',
        if (fieldSQL.$defaultValue != null)
          'defaultValue: ${fieldSQL.$defaultValue is String ? '\'${fieldSQL.$defaultValue}\'' : fieldSQL.$defaultValue}',
        if (fieldSQL.$autoIncrement != null) 'autoIncrement: ${fieldSQL.$autoIncrement}',
        if (fieldSQL.$primaryKey != null) 'primaryKey: ${fieldSQL.$primaryKey}',
        if (fieldSQL.$nullable != null) 'nullable: ${fieldSQL.$nullable}',
      ].join(','),
      ')',
    ].join();
  }

  String _mapperStringField(FieldType fieldType) {
    return 'FieldType(\'${fieldType.name}\', ${fieldType.type.toString()}${fieldType.size != null ? ', ${fieldType.size}' : ''})';
  }
}
