import 'package:nucleoid/html.dart';
import 'package:nucleoid_built/node_element.dart';

import 'node_element.dart';

part 'tag_element.g.dart';

class Document extends ChildNodeElement {
  Document({NodeElement child, List<NodeElement> children}) : super(child: child, children: children);

  @override
  String build() => '<!DOCTYPE html>\n${super.build()}';
}

abstract class HtmlBuilt implements BuiltNodeElement<ChildNodeElement>, NoEvents {
  static const List<Attribute> attributesExtend = [Attributes.manifest, Attributes.dataTheme];
}

abstract class HeadBuilt implements BuiltNodeElement<ChildNodeElement>, NoEvents {}

abstract class BodyBuilt implements BuiltNodeElement<ChildNodeElement> {}

abstract class TitleBuilt implements BuiltNodeElement<ChildNodeElement> {
  static const List<Attribute> attributes = [];
}

abstract class LinkBuilt implements BuiltNodeElement, NoEvents {
  static const List<Attribute> attributesExtend = [
    Attributes.href,
    Attributes.media,
    Attributes.relLink,
    Attributes.sizes,
    Attributes.type,
  ];
}

abstract class MetaBuilt implements BuiltNodeElement {
  static const List<Attribute> attributes = [
    Attributes.charset,
    Attributes.content,
    Attributes.httpEquiv,
    Attributes.name,
  ];
}

abstract class ScriptBuilt implements BuiltNodeElement<ChildNodeElement> {
  static const List<Attribute> attributes = [
    Attributes.async,
    Attributes.defer,
    Attributes.src,
    Attributes.type,
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
    Attributes.download,
    Attributes.href,
    Attributes.hreflang,
    Attributes.relA,
    Attributes.target,
    Attributes.type,
  ];
}

class TargetA {
  final String name;

  const TargetA(this.name) : assert(name != null && name != '');

  static const blank = TargetA('_blank');

  static const self = TargetA('_self');

  static const parent = TargetA('_parent');

  static const top = TargetA('_top');

  String build() => name;
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
    Attributes.alt,
    Attributes.height,
    Attributes.isMap,
    Attributes.src,
    Attributes.width,
    Attributes.useMap,
  ];
}

abstract class SpanBuilt implements BuiltNodeElement<ChildNodeElement> {}

abstract class UlBuilt implements BuiltNodeElement<ChildNodeElement> {
  static const List<Attribute> attributesExtend = [Attribute(name: 'type')];
}

abstract class OlBuilt implements BuiltNodeElement<ChildNodeElement> {
  static const List<Attribute> attributesExtend = [
    Attributes.type,
    Attributes.reversed,
    Attributes.start,
  ];
}

abstract class LiBuilt implements BuiltNodeElement<ChildNodeElement> {
  static const List<Attribute> attributesExtend = [Attributes.type, Attributes.valueLi];
}

abstract class StrongBuilt implements BuiltNodeElement<ChildNodeElement> {}

abstract class BBuilt implements BuiltNodeElement<ChildNodeElement> {}

abstract class EmBuilt implements BuiltNodeElement<ChildNodeElement> {}

abstract class IBuilt implements BuiltNodeElement<ChildNodeElement> {}

abstract class SmallBuilt implements BuiltNodeElement<ChildNodeElement> {}

abstract class BigBuilt implements BuiltNodeElement<ChildNodeElement> {}

abstract class TimeBuilt implements BuiltNodeElement<ChildNodeElement> {
  static const List<Attribute> attributesExtend = [Attributes.datetime];
}

abstract class CodeBuilt implements BuiltNodeElement<ChildNodeElement> {}

abstract class HrBuilt implements BuiltNodeElement {}

abstract class FormBuilt implements BuiltNodeElement<ChildNodeElement> {
  static const List<Attribute> attributesExtend = [
    Attributes.acceptCharset,
    Attributes.action,
    Attributes.autocomplete,
    Attributes.enctype,
    Attributes.method,
    Attributes.name,
    Attributes.formNovalidate,
    Attributes.target,
  ];
}

abstract class InputBuilt implements BuiltNodeElement {
  static const List<Attribute> attributesExtend = [
    Attributes.accept,
    Attributes.alt,
    Attributes.autocomplete,
    Attributes.disabled,
    Attributes.form,
    Attributes.formAction,
    Attributes.formEnctype,
    Attributes.formMethod,
    Attributes.formNovalidate,
    Attributes.formTarget,
    Attributes.list,
    Attributes.max,
    Attributes.maxlength,
    Attributes.min,
    Attributes.multiple,
    Attributes.name,
    Attributes.pattern,
    Attributes.placeholder,
    Attributes.readonly,
    Attributes.required,
    Attributes.size,
    Attributes.src,
    Attributes.step,
    Attributes.typeInput,
    Attributes.value,
  ];
}

abstract class DatalistBuilt implements BuiltNodeElement<ChildNodeElement> {}

abstract class SelectBuilt implements BuiltNodeElement<ChildNodeElement> {
  static const List<Attribute> attributesExtend = [
    Attributes.disabled,
    Attributes.form,
    Attributes.multiple,
    Attributes.name,
    Attributes.required,
    Attributes.size,
  ];
}

abstract class OptionBuilt implements BuiltNodeElement<ChildNodeElement> {
  static const List<Attribute> attributesExtend = [
    Attributes.disabled,
    Attributes.label,
    Attributes.selected,
    Attributes.value,
  ];
}

abstract class LabelBuilt implements BuiltNodeElement<ChildNodeElement> {
  static const List<Attribute> attributesExtend = [Attributes.forId];
}

abstract class ButtonBuilt implements BuiltNodeElement<ChildNodeElement> {
  static const List<Attribute> attributesExtend = [
    Attributes.disabled,
    Attributes.form,
    Attributes.formAction,
    Attributes.formEnctype,
    Attributes.formMethod,
    Attributes.formNovalidate,
    Attributes.formTarget,
    Attributes.name,
    Attributes.typeButton,
    Attributes.value,
  ];
}

abstract class TextareaBuilt implements BuiltNodeElement<ChildNodeElement> {
  static const List<Attribute> attributesExtend = [
    Attributes.cols,
    Attributes.disabled,
    Attributes.form,
    Attributes.maxlength,
    Attributes.name,
    Attributes.placeholder,
    Attributes.readonly,
    Attributes.required,
    Attributes.rows,
    Attributes.wrap,
  ];
}
