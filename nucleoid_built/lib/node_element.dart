import 'package:meta/meta.dart' show required;

abstract class BuiltNodeElement<T> {
  static const List<Attribute> attributes = null;
}

Map<String, Attribute> attributesHtml = {
  'accesskey': Attributes.accesskey,
  'autofocus': Attributes.autofocus,
  'class': Attributes.classList,
  'contenteditable': Attributes.contenteditable,
  'contextmenu': Attributes.contextmenu,
  'dir': Attributes.dir,
  'hidden': Attributes.hidden,
  'id': Attributes.id,
  'lang': Attributes.lang,
  'role': Attributes.role,
  'spellcheck': Attributes.spellcheck,
  'style': Attributes.style,
  'tabindex': Attributes.tabindex,
  'title': Attributes.title,
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

abstract class Attributes {
  static const accept = Attribute(name: 'accept');
  static const acceptCharset = Attribute(
    name: 'accept-charset',
    type: 'final String acceptCharset;',
    init: 'this.acceptCharset',
    html: 'if (acceptCharset != null) \' accept-charset="\$acceptCharset"\'',
  );
  static const accesskey = Attribute(name: 'accesskey');
  static const action = Attribute(name: 'action');
  static const alt = Attribute(name: 'alt');
  static const async = Attribute(name: 'async', isBool: true);
  static const autocomplete = Attribute(
    name: 'autocomplete',
    type: 'final InputAutocomplete autocomplete;',
    html: 'if (autocomplete != null) \' autocomplete="\${mapperInputAutocomplete(autocomplete)}"\'',
  );
  static const autofocus = Attribute(name: 'autofocus', isBool: true);
  static const charset = Attribute(name: 'charset');
  static const content = Attribute(name: 'content');
  static const cols = Attribute(name: 'cols', type: 'final int cols;');
  static const colspan = Attribute(name: 'colspan', type: 'final int colspan;');
  static const classList = Attribute(
    name: 'class',
    type: 'final List<StyleClass> classList;',
    init: 'this.classList',
    html: 'if (classList != null && classList.isNotEmpty) \' class="\${classList.map((e) => e.name).join(\' \')}"\'',
  );
  static const contenteditable = Attribute(
    name: 'contentEditable',
    isBool: true,
    html: 'if (contentEditable) \' contenteditable\'',
  );
  static const contextmenu = Attribute(name: 'contextmenu');
  static const dataTheme = Attribute(name: 'dataTheme', html: 'if (dataTheme != null) \' data-theme="\$dataTheme"\'');
  static const datetime = Attribute(name: 'datetime');
  static const defer = Attribute(name: 'defer', isBool: true);
  static const dir = Attribute(name: 'dir');
  static const disabled = Attribute(name: 'disabled', isBool: true);
  static const download = Attribute(name: 'download', isBool: true);
  static const enctype = Attribute(name: 'enctype');
  static const headers = Attribute(name: 'headers');
  static const height = Attribute(name: 'height');
  static const hidden = Attribute(name: 'hidden', isBool: true);
  static const href = Attribute(name: 'href');
  static const hreflang = Attribute(name: 'hreflang');
  static const httpEquiv = Attribute(name: 'httpEquiv', html: 'if (httpEquiv != null) \' http-equiv="\$httpEquiv"\'');
  static const id = Attribute(name: 'id');
  static const isMap = Attribute(name: 'ismap', isBool: true);
  static const label = Attribute(name: 'label');
  static const lang = Attribute(name: 'lang');
  static const list = Attribute(name: 'list');
  static const manifest = Attribute(name: 'manifest');
  static const max = Attribute(name: 'max');
  static const maxlength = Attribute(name: 'maxlength', type: 'final int maxlength;');
  static const media = Attribute(name: 'media');
  static const method = Attribute(
    name: 'method',
    type: 'final FormMethod method;',
    html: 'if (method != null) \' method="\${mapperFormMethod(method)}"\'',
  );
  static const min = Attribute(name: 'min');
  static const multiple = Attribute(name: 'multiple', isBool: true);
  static const name = Attribute(name: 'name');
  static const pattern = Attribute(name: 'pattern');
  static const placeholder = Attribute(name: 'placeholder');
  static const readonly = Attribute(name: 'readonly', isBool: true);
  static const relA = Attribute(
    name: 'rel',
    type: 'final RelA rel;',
    html: 'if (rel != null) \' rel="\${mapperRelA(rel)}"\'',
  );
  static const relLink = Attribute(name: 'rel');
  static const required = Attribute(name: 'required', isBool: true);
  static const reversed = Attribute(name: 'reversed', isBool: true);
  static const role = Attribute(name: 'role');
  static const rows = Attribute(name: 'rows', type: 'final int rows;');
  static const rowspan = Attribute(name: 'rowspan', type: 'final int rowspan;');
  static const scope = Attribute(
    name: 'scope',
    type: 'final ScopeTable scope;',
    html: 'if (scope != null) \' scope="\${mapperScopeTable(scope)}"\'',
  );
  static const selected = Attribute(name: 'selected', isBool: true);
  static const size = Attribute(name: 'size', type: 'final int size;');
  static const sizes = Attribute(name: 'sizes');
  static const spellcheck = Attribute(name: 'spellcheck', isBool: true);
  static const src = Attribute(name: 'src');
  static const start = Attribute(name: 'start', type: 'final int start;');
  static const step = Attribute(name: 'step', type: 'final num step;');
  static const style = Attribute(
    name: 'style',
    type: 'final List<StyleCSS> styleList;',
    init: 'this.styleList',
    html: 'if (styleList != null && styleList.isNotEmpty) \' style="\${styleList.map((e) => e.build()).join(\';\')}"\'',
  );
  static const tabindex = Attribute(name: 'tabindex', type: 'final int tabindex;');
  static const target = Attribute(
    name: 'target',
    type: 'final TargetA target;',
    html: 'if (target != null) \' target="\${target.build()}"\'',
  );
  static const type = Attribute(name: 'type');
  static const typeButton = Attribute(
    name: 'type',
    type: 'final ButtonType type;',
    html: 'if (type != null) \' type="\${mapperButtonType(type)}"\'',
  );
  static const typeInput = Attribute(
    name: 'type',
    type: 'final InputType type;',
    html: 'if (type != null) \' type="\${mapperInputType(type)}"\'',
  );
  static const title = Attribute(name: 'title');
  static const forId = Attribute(
    name: 'for',
    type: 'final String forId;',
    init: 'this.forId',
    html: 'if (forId != null) \' for="\$forId"\'',
  );
  static const form = Attribute(name: 'form');
  static const formAction = Attribute(name: 'formaction');
  static const formEnctype = Attribute(name: 'formenctype');
  static const formMethod = Attribute(
    name: 'formmethod',
    type: 'final FormMethod formmethod;',
    html: 'if (formmethod != null) \' formmethod="\${mapperFormMethod(formmethod)}"\'',
  );
  static const formNovalidate = Attribute(name: 'formnovalidate', isBool: true);
  static const formTarget = Attribute(
    name: 'formtarget',
    type: 'final TargetA formtarget;',
    html: 'if (formtarget != null) \' formtarget="\${formtarget.build()}"\'',
  );
  static const useMap = Attribute(name: 'usemap');
  static const value = Attribute(name: 'value');
  static const valueLi = Attribute(name: 'value', type: 'final int value;');
  static const width = Attribute(name: 'width');
  static const wrap = Attribute(
    name: 'wrap',
    type: 'final WrapTextarea wrap;',
    html: 'if (wrap != null) \' wrap="\${mapperWrapTextarea(wrap)}"\'',
  );
}
