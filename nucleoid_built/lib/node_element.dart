import 'package:meta/meta.dart' show required;

abstract class BuiltNodeElement<T> {
  static const List<Attribute> attributes = null;
}

Map<String, Attribute> attributesHtml = {
  'accesskey': Attribute(name: 'accesskey'),
  'autofocus': Attribute(name: 'autofocus', isBool: true),
  'class': Attribute(
    name: 'class',
    type: 'final List<StyleClass> classList;',
    init: 'this.classList',
    html: 'if (classList != null && classList.isNotEmpty) \' class="\${classList.map((e) => e.name).join(\' \')}"\'',
  ),
  'contenteditable':
      Attribute(name: 'contentEditable', isBool: true, html: 'if (contentEditable) \' contenteditable\''),
  'contextmenu': Attribute(name: 'contextmenu'),
  'dir': Attribute(name: 'dir'),
  'hidden': Attribute(name: 'hidden', isBool: true),
  'id': Attribute(name: 'id'),
  'lang': Attribute(name: 'lang'),
  'spellcheck': Attribute(name: 'spellcheck', isBool: true),
  'style': Attribute(
    name: 'style',
    type: 'final List<StyleElement> styleList;',
    init: 'this.styleList',
    html: 'if (styleList != null && styleList.isNotEmpty) \' style="\${styleList.map((e) => e.style.text).join(\' \')}"\'',
  ),
  'tabindex': Attribute(name: 'tabindex'),
  'title': Attribute(name: 'title'),
};

class Attribute {
  final String name;
  final String type;
  final String init;
  final String html;
  final bool isBool;

  const Attribute({@required this.name, String type, String init, String html, bool isBool = false})
      : assert(name != null && name != ''),
        type = type ?? (isBool ? 'final bool $name;' : 'final String $name;'),
        init = init ?? (isBool ? 'this.$name = false' : 'this.$name'),
        html = html ?? (isBool ? 'if ($name) \' $name\'' : 'if ($name != null) \' $name="\$$name"\''),
        isBool = isBool;
}

List<Attribute> attributesEvents = [
  'onblur',
  'onchange',
  'onclick',
  'ondblclick',
  'onfocus',
  'onkeydown',
  'onkeypress',
  'onkeyup',
  'onload',
  'onmousedown',
  'onmousemove',
  'onmouseout',
  'onmouseover',
  'onmouseup',
  'onreset',
  'onselect',
  'onsubmit',
  'onunload'
].map((e) => Attribute(name: e)).toList();
