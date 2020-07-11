import 'dart:async';

import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:nucleoid_built/node_element.dart';
import 'package:source_gen/source_gen.dart';

enum _TypeNodeElement { single, child }

Map<_TypeNodeElement, String> _extendsNodeElement = {
  _TypeNodeElement.single: 'NodeElement',
  _TypeNodeElement.child: 'ChildNodeElement',
};

class NodeElementGenerator extends Generator {
  @override
  Future<String> generate(LibraryReader library, _) async {
    var result = StringBuffer();

    for (var element in library.allElements.whereType<ClassElement>()) {
      if (BuiltNodeElementSource.needsBuiltValue(element)) {
        _TypeNodeElement type;

        var elementName = element.name.substring(0, element.name.length - 5);
        var tagName = elementName.toLowerCase();
        var generic = element.allSupertypes
            .firstWhere((element) => element.element.name == 'BuiltNodeElement', orElse: () => null)
            .typeArguments
            .first;
        var noEvents =
            element.allSupertypes.firstWhere((element) => element.element.name == 'NoEvents', orElse: () => null);

        var attributesElement = element
            .getField('attributes')
            ?.computeConstantValue()
            ?.toListValue()
            ?.map(_mapperAttributeDartObject)
            ?.toList();

        var attributesExtendElement;

        if (attributesElement == null) {
          attributesExtendElement = element
              .getField('attributesExtend')
              ?.computeConstantValue()
              ?.toListValue()
              ?.map(_mapperAttributeDartObject)
              ?.toList();
        }

        var attributes = attributesElement ??
            <Attribute>[
              ...?attributesExtendElement,
              ...(attributesHtml.values),
              if (noEvents == null) ...attributesEvents
            ];

        switch (generic.toString()) {
          case 'ChildNodeElement':
            type = _TypeNodeElement.child;
            break;
          default:
            type = _TypeNodeElement.single;
        }

        result.writeln('// Code for "$element"');
        result.writeln('class $elementName extends ${_extendsNodeElement[type]} implements ${element.name} {');
        result.writeAll([
          'const $elementName({',
          if (type == _TypeNodeElement.child) ...['NodeElement child, List<NodeElement> children,'],
          ...attributes.map((e) => ' ${e.init},').toList(),
          '})',
          if (type == _TypeNodeElement.child) ...[' : super(child: child, children: children)'],
          ';\n\n',
          ...attributes.map((e) => ' ${e.type}\n').toList()
        ]);
        result.writeAll([
          '\n@override\n',
          'String build() => [',
          '\'<$tagName\',',
          ...attributes.map((e) => ' ${e.html},').toList(),
          '\'>\'',
          if (type == _TypeNodeElement.child) ...[
            ', super.build()',
            ', \'</$tagName>\'',
          ],
          '].join();',
        ]);
        result.writeln('}');
      }
    }

    return result.toString();
  }
}

Attribute _mapperAttributeDartObject(DartObject dartObject) {
  try {
    return Attribute(
      name: dartObject.getField('name').toStringValue(),
      type: dartObject.getField('type').toStringValue(),
      init: dartObject.getField('init').toStringValue(),
      html: dartObject.getField('html').toStringValue(),
    );
  } catch (_) {
    return null;
  }
}

abstract class BuiltNodeElementSource {
  static const List<Attribute> attributes = null;

  static bool needsBuiltValue(ClassElement classElement) {
    return classElement.allSupertypes.any((interfaceType) => interfaceType.element.name == 'BuiltNodeElement');
  }
}
