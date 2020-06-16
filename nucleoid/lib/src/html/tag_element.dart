import 'package:nucleoid_built/node_element.dart';

import 'node_element.dart';
import 'package:nucleoid/html.dart';

part 'tag_element.g.dart';

class Document extends ChildNodeElement {
  Document({NodeElement child, List<NodeElement> children}) : super(child: child, children: children);

  @override
  String get html => '<!DOCTYPE html>\n${super.html}';
}

abstract class HtmlBuilt implements BuiltNodeElement<ChildNodeElement>, NoEvents {
  static const List<Attribute> attributesExtend = [
    Attribute(name: 'manifest'),
    Attribute(name: 'dataTheme', html: 'if (dataTheme != null) \' data-theme="\$dataTheme"\''),
  ];
}

abstract class HeadBuilt implements BuiltNodeElement<ChildNodeElement>, NoEvents {}

abstract class BodyBuilt implements BuiltNodeElement<ChildNodeElement> {}

abstract class TitleBuilt implements BuiltNodeElement<ChildNodeElement> {
  static const List<Attribute> attributes = [];
}

abstract class LinkBuilt implements BuiltNodeElement, NoEvents {
  static const List<Attribute> attributesExtend = [
    Attribute(name: 'href'),
    Attribute(name: 'media'),
    Attribute(name: 'rel'),
    Attribute(name: 'sizes'),
    Attribute(name: 'type'),
  ];
}

abstract class MetaBuilt implements BuiltNodeElement {
  static const List<Attribute> attributes = [
    Attribute(name: 'charset'),
    Attribute(name: 'content'),
    Attribute(name: 'httpEquiv', html: 'if (httpEquiv != null) \' http-equiv="\$httpEquiv"\''),
    Attribute(name: 'name'),
  ];
}

abstract class ScriptBuilt implements BuiltNodeElement<ChildNodeElement> {
  static const List<Attribute> attributes = [
    Attribute(name: 'async', isBool: true),
    Attribute(name: 'defer', isBool: true),
    Attribute(name: 'src'),
    Attribute(name: 'type'),
  ];
}

abstract class HeaderBuilt implements BuiltNodeElement<ChildNodeElement> {
  static const List<Attribute> attributes = [];
}

abstract class NavBuilt implements BuiltNodeElement<ChildNodeElement> {
  static const List<Attribute> attributes = [];
}

abstract class MainBuilt implements BuiltNodeElement<ChildNodeElement>, NoEvents {}

abstract class AsideBuilt implements BuiltNodeElement<ChildNodeElement>, NoEvents {}

abstract class SectionBuilt implements BuiltNodeElement<ChildNodeElement> {}

abstract class ArticleBuilt implements BuiltNodeElement<ChildNodeElement> {
  static const List<Attribute> attributes = [];
}

abstract class FooterBuilt implements BuiltNodeElement<ChildNodeElement> {
  static const List<Attribute> attributes = [];
}

abstract class DivBuilt implements BuiltNodeElement<ChildNodeElement> {}

abstract class H1Built implements BuiltNodeElement<ChildNodeElement> {}

abstract class H2Built implements BuiltNodeElement<ChildNodeElement> {}

abstract class H3Built implements BuiltNodeElement<ChildNodeElement> {}

abstract class H4Built implements BuiltNodeElement<ChildNodeElement> {}

abstract class H5Built implements BuiltNodeElement<ChildNodeElement> {}

abstract class H6Built implements BuiltNodeElement<ChildNodeElement> {}

abstract class PBuilt implements BuiltNodeElement<ChildNodeElement> {}

abstract class ABuilt implements BuiltNodeElement<ChildNodeElement> {
  static const List<Attribute> attributesExtend = [
    Attribute(name: 'download', isBool: true),
    Attribute(name: 'href'),
    Attribute(name: 'hreflang'),
    Attribute(
      name: 'rel',
      type: 'final RelA rel;',
      html: 'if (rel != null) \' rel="\${mapperRelA(rel)}"\'',
    ),
    Attribute(
      name: 'target',
      type: 'final TargetA target;',
      html: 'if (target != null) \' target="\${target.text}"\'',
    ),
    Attribute(name: 'type'),
  ];
}

class TargetA {
  final String name;

  const TargetA(this.name) : assert(name != null && name != '');

  static const blank = TargetA('_blank');

  static const self = TargetA('_self');

  static const parent = TargetA('_parent');

  static const top = TargetA('_top');

  String get text => name;
}

enum RelA {
  archives,
  author,
  bookmark,
  first,
  help,
  indexRel,
  last,
  license,
  me,
  next,
  nofollow,
  noReferrer,
  prefetch,
  prev,
  search,
  sidebar,
  tag,
  up
}

String mapperRelA(RelA value) {
  switch (value) {
    case RelA.archives:
      return 'archives';
    case RelA.author:
      return 'author';
    case RelA.bookmark:
      return 'bookmark';
    case RelA.first:
      return 'first';
    case RelA.help:
      return 'help';
    case RelA.indexRel:
      return 'index';
    case RelA.last:
      return 'last';
    case RelA.license:
      return 'license';
    case RelA.me:
      return 'me';
    case RelA.next:
      return 'next';
    case RelA.nofollow:
      return 'nofollow';
    case RelA.noReferrer:
      return 'noreferrer';
    case RelA.prefetch:
      return 'prefetch';
    case RelA.prev:
      return 'prev';
    case RelA.search:
      return 'search';
    case RelA.sidebar:
      return 'sidebar';
    case RelA.tag:
      return 'tag';
    case RelA.up:
      return 'up';
    default:
      throw Exception('Invalid value RelA');
  }
}

abstract class ImgBuilt implements BuiltNodeElement {
  static const List<Attribute> attributesExtend = [
    Attribute(name: 'alt'),
    Attribute(name: 'height'),
    Attribute(name: 'ismap', isBool: true),
    Attribute(name: 'src'),
    Attribute(name: 'width'),
    Attribute(name: 'usemap'),
  ];
}

abstract class SpanBuilt implements BuiltNodeElement<ChildNodeElement> {}

abstract class UlBuilt implements BuiltNodeElement<ChildNodeElement> {
  static const List<Attribute> attributesExtend = [Attribute(name: 'type')];
}

abstract class OlBuilt implements BuiltNodeElement<ChildNodeElement> {
  static const List<Attribute> attributesExtend = [
    Attribute(name: 'type'),
    Attribute(name: 'reversed', isBool: true),
    Attribute(name: 'start', type: 'final int start;')
  ];
}

abstract class LiBuilt implements BuiltNodeElement<ChildNodeElement> {
  static const List<Attribute> attributesExtend = [
    Attribute(name: 'type'),
    Attribute(name: 'value', type: 'final int value;')
  ];
}

abstract class StrongBuilt implements BuiltNodeElement<ChildNodeElement> {}

abstract class BBuilt implements BuiltNodeElement<ChildNodeElement> {}

abstract class EmBuilt implements BuiltNodeElement<ChildNodeElement> {}

abstract class IBuilt implements BuiltNodeElement<ChildNodeElement> {}

abstract class SmallBuilt implements BuiltNodeElement<ChildNodeElement> {}

abstract class BigBuilt implements BuiltNodeElement<ChildNodeElement> {}

abstract class TimeBuilt implements BuiltNodeElement<ChildNodeElement> {
  static const List<Attribute> attributesExtend = [
    Attribute(name: 'datetime'),
  ];
}

abstract class CodeBuilt implements BuiltNodeElement<ChildNodeElement> {}

abstract class HrBuilt implements BuiltNodeElement {}
