// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_element.dart';

// **************************************************************************
// NodeElementGenerator
// **************************************************************************

// Code for "abstract class HtmlBuilt implements BuiltNodeElement<ChildNodeElement>, NoEvents"
class Html extends ChildNodeElement implements HtmlBuilt {
  const Html({
    NodeElement child,
    List<NodeElement> children,
    this.manifest,
    this.dataTheme,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
  }) : super(child: child, children: children);

  final String manifest;
  final String dataTheme;
  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;

  @override
  String build() => [
        '<html',
        if (manifest != null) ' manifest="$manifest"',
        if (dataTheme != null) ' data-theme="$dataTheme"',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        '>',
        super.build(),
        '</html>'
      ].join();
}

// Code for "abstract class HeadBuilt implements BuiltNodeElement<ChildNodeElement>, NoEvents"
class Head extends ChildNodeElement implements HeadBuilt {
  const Head({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;

  @override
  String build() => [
        '<head',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        '>',
        super.build(),
        '</head>'
      ].join();
}

// Code for "abstract class BodyBuilt implements BuiltNodeElement<ChildNodeElement>"
class Body extends ChildNodeElement implements BodyBuilt {
  const Body({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<body',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</body>'
      ].join();
}

// Code for "abstract class TitleBuilt implements BuiltNodeElement<ChildNodeElement>"
class Title extends ChildNodeElement implements TitleBuilt {
  const Title({
    NodeElement child,
    List<NodeElement> children,
  }) : super(child: child, children: children);

  @override
  String build() => ['<title', '>', super.build(), '</title>'].join();
}

// Code for "abstract class LinkBuilt implements BuiltNodeElement<dynamic>, NoEvents"
class Link extends NodeElement implements LinkBuilt {
  const Link({
    this.href,
    this.media,
    this.rel,
    this.sizes,
    this.type,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
  });

  final String href;
  final String media;
  final String rel;
  final String sizes;
  final String type;
  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;

  @override
  String build() => [
        '<link',
        if (href != null) ' href="$href"',
        if (media != null) ' media="$media"',
        if (rel != null) ' rel="$rel"',
        if (sizes != null) ' sizes="$sizes"',
        if (type != null) ' type="$type"',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        '>'
      ].join();
}

// Code for "abstract class MetaBuilt implements BuiltNodeElement<dynamic>"
class Meta extends NodeElement implements MetaBuilt {
  const Meta({
    this.charset,
    this.content,
    this.httpEquiv,
    this.name,
  });

  final String charset;
  final String content;
  final String httpEquiv;
  final String name;

  @override
  String build() => [
        '<meta',
        if (charset != null) ' charset="$charset"',
        if (content != null) ' content="$content"',
        if (httpEquiv != null) ' http-equiv="$httpEquiv"',
        if (name != null) ' name="$name"',
        '>'
      ].join();
}

// Code for "abstract class ScriptBuilt implements BuiltNodeElement<ChildNodeElement>"
class Script extends ChildNodeElement implements ScriptBuilt {
  const Script({
    NodeElement child,
    List<NodeElement> children,
    this.async = false,
    this.defer = false,
    this.src,
    this.type,
  }) : super(child: child, children: children);

  final bool async;
  final bool defer;
  final String src;
  final String type;

  @override
  String build() => [
        '<script',
        if (async) ' async',
        if (defer) ' defer',
        if (src != null) ' src="$src"',
        if (type != null) ' type="$type"',
        '>',
        super.build(),
        '</script>'
      ].join();
}

// Code for "abstract class HeaderBuilt implements BuiltNodeElement<ChildNodeElement>"
class Header extends ChildNodeElement implements HeaderBuilt {
  const Header({
    NodeElement child,
    List<NodeElement> children,
  }) : super(child: child, children: children);

  @override
  String build() => ['<header', '>', super.build(), '</header>'].join();
}

// Code for "abstract class NavBuilt implements BuiltNodeElement<ChildNodeElement>"
class Nav extends ChildNodeElement implements NavBuilt {
  const Nav({
    NodeElement child,
    List<NodeElement> children,
  }) : super(child: child, children: children);

  @override
  String build() => ['<nav', '>', super.build(), '</nav>'].join();
}

// Code for "abstract class MainBuilt implements BuiltNodeElement<ChildNodeElement>, NoEvents"
class Main extends ChildNodeElement implements MainBuilt {
  const Main({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;

  @override
  String build() => [
        '<main',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        '>',
        super.build(),
        '</main>'
      ].join();
}

// Code for "abstract class AsideBuilt implements BuiltNodeElement<ChildNodeElement>, NoEvents"
class Aside extends ChildNodeElement implements AsideBuilt {
  const Aside({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;

  @override
  String build() => [
        '<aside',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        '>',
        super.build(),
        '</aside>'
      ].join();
}

// Code for "abstract class SectionBuilt implements BuiltNodeElement<ChildNodeElement>"
class Section extends ChildNodeElement implements SectionBuilt {
  const Section({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<section',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</section>'
      ].join();
}

// Code for "abstract class ArticleBuilt implements BuiltNodeElement<ChildNodeElement>"
class Article extends ChildNodeElement implements ArticleBuilt {
  const Article({
    NodeElement child,
    List<NodeElement> children,
  }) : super(child: child, children: children);

  @override
  String build() => ['<article', '>', super.build(), '</article>'].join();
}

// Code for "abstract class FooterBuilt implements BuiltNodeElement<ChildNodeElement>"
class Footer extends ChildNodeElement implements FooterBuilt {
  const Footer({
    NodeElement child,
    List<NodeElement> children,
  }) : super(child: child, children: children);

  @override
  String build() => ['<footer', '>', super.build(), '</footer>'].join();
}

// Code for "abstract class DivBuilt implements BuiltNodeElement<ChildNodeElement>"
class Div extends ChildNodeElement implements DivBuilt {
  const Div({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<div',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</div>'
      ].join();
}

// Code for "abstract class H1Built implements BuiltNodeElement<ChildNodeElement>"
class H1 extends ChildNodeElement implements H1Built {
  const H1({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<h1',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</h1>'
      ].join();
}

// Code for "abstract class H2Built implements BuiltNodeElement<ChildNodeElement>"
class H2 extends ChildNodeElement implements H2Built {
  const H2({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<h2',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</h2>'
      ].join();
}

// Code for "abstract class H3Built implements BuiltNodeElement<ChildNodeElement>"
class H3 extends ChildNodeElement implements H3Built {
  const H3({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<h3',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</h3>'
      ].join();
}

// Code for "abstract class H4Built implements BuiltNodeElement<ChildNodeElement>"
class H4 extends ChildNodeElement implements H4Built {
  const H4({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<h4',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</h4>'
      ].join();
}

// Code for "abstract class H5Built implements BuiltNodeElement<ChildNodeElement>"
class H5 extends ChildNodeElement implements H5Built {
  const H5({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<h5',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</h5>'
      ].join();
}

// Code for "abstract class H6Built implements BuiltNodeElement<ChildNodeElement>"
class H6 extends ChildNodeElement implements H6Built {
  const H6({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<h6',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</h6>'
      ].join();
}

// Code for "abstract class PBuilt implements BuiltNodeElement<ChildNodeElement>"
class P extends ChildNodeElement implements PBuilt {
  const P({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<p',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</p>'
      ].join();
}

// Code for "abstract class ABuilt implements BuiltNodeElement<ChildNodeElement>"
class A extends ChildNodeElement implements ABuilt {
  const A({
    NodeElement child,
    List<NodeElement> children,
    this.download = false,
    this.href,
    this.hreflang,
    this.rel,
    this.target,
    this.type,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final bool download;
  final String href;
  final String hreflang;
  final RelA rel;
  final TargetA target;
  final String type;
  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<a',
        if (download) ' download',
        if (href != null) ' href="$href"',
        if (hreflang != null) ' hreflang="$hreflang"',
        if (rel != null) ' rel="${mapperRelA(rel)}"',
        if (target != null) ' target="${target.build()}"',
        if (type != null) ' type="$type"',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</a>'
      ].join();
}

// Code for "abstract class ImgBuilt implements BuiltNodeElement<dynamic>"
class Img extends NodeElement implements ImgBuilt {
  const Img({
    this.alt,
    this.height,
    this.ismap = false,
    this.src,
    this.width,
    this.usemap,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  });

  final String alt;
  final String height;
  final bool ismap;
  final String src;
  final String width;
  final String usemap;
  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<img',
        if (alt != null) ' alt="$alt"',
        if (height != null) ' height="$height"',
        if (ismap) ' ismap',
        if (src != null) ' src="$src"',
        if (width != null) ' width="$width"',
        if (usemap != null) ' usemap="$usemap"',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>'
      ].join();
}

// Code for "abstract class SpanBuilt implements BuiltNodeElement<ChildNodeElement>"
class Span extends ChildNodeElement implements SpanBuilt {
  const Span({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<span',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</span>'
      ].join();
}

// Code for "abstract class UlBuilt implements BuiltNodeElement<ChildNodeElement>"
class Ul extends ChildNodeElement implements UlBuilt {
  const Ul({
    NodeElement child,
    List<NodeElement> children,
    this.type,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String type;
  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<ul',
        if (type != null) ' type="$type"',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</ul>'
      ].join();
}

// Code for "abstract class OlBuilt implements BuiltNodeElement<ChildNodeElement>"
class Ol extends ChildNodeElement implements OlBuilt {
  const Ol({
    NodeElement child,
    List<NodeElement> children,
    this.type,
    this.reversed = false,
    this.start,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String type;
  final bool reversed;
  final int start;
  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<ol',
        if (type != null) ' type="$type"',
        if (reversed) ' reversed',
        if (start != null) ' start="$start"',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</ol>'
      ].join();
}

// Code for "abstract class LiBuilt implements BuiltNodeElement<ChildNodeElement>"
class Li extends ChildNodeElement implements LiBuilt {
  const Li({
    NodeElement child,
    List<NodeElement> children,
    this.type,
    this.value,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String type;
  final int value;
  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<li',
        if (type != null) ' type="$type"',
        if (value != null) ' value="$value"',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</li>'
      ].join();
}

// Code for "abstract class StrongBuilt implements BuiltNodeElement<ChildNodeElement>"
class Strong extends ChildNodeElement implements StrongBuilt {
  const Strong({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<strong',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</strong>'
      ].join();
}

// Code for "abstract class BBuilt implements BuiltNodeElement<ChildNodeElement>"
class B extends ChildNodeElement implements BBuilt {
  const B({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<b',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</b>'
      ].join();
}

// Code for "abstract class EmBuilt implements BuiltNodeElement<ChildNodeElement>"
class Em extends ChildNodeElement implements EmBuilt {
  const Em({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<em',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</em>'
      ].join();
}

// Code for "abstract class IBuilt implements BuiltNodeElement<ChildNodeElement>"
class I extends ChildNodeElement implements IBuilt {
  const I({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<i',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</i>'
      ].join();
}

// Code for "abstract class SmallBuilt implements BuiltNodeElement<ChildNodeElement>"
class Small extends ChildNodeElement implements SmallBuilt {
  const Small({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<small',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</small>'
      ].join();
}

// Code for "abstract class BigBuilt implements BuiltNodeElement<ChildNodeElement>"
class Big extends ChildNodeElement implements BigBuilt {
  const Big({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<big',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</big>'
      ].join();
}

// Code for "abstract class TimeBuilt implements BuiltNodeElement<ChildNodeElement>"
class Time extends ChildNodeElement implements TimeBuilt {
  const Time({
    NodeElement child,
    List<NodeElement> children,
    this.datetime,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String datetime;
  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<time',
        if (datetime != null) ' datetime="$datetime"',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</time>'
      ].join();
}

// Code for "abstract class CodeBuilt implements BuiltNodeElement<ChildNodeElement>"
class Code extends ChildNodeElement implements CodeBuilt {
  const Code({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<code',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</code>'
      ].join();
}

// Code for "abstract class HrBuilt implements BuiltNodeElement<dynamic>"
class Hr extends NodeElement implements HrBuilt {
  const Hr({
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  });

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<hr',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>'
      ].join();
}

// Code for "abstract class FormBuilt implements BuiltNodeElement<ChildNodeElement>"
class Form extends ChildNodeElement implements FormBuilt {
  const Form({
    NodeElement child,
    List<NodeElement> children,
    this.acceptCharset,
    this.action,
    this.autocomplete,
    this.enctype,
    this.method,
    this.name,
    this.formnovalidate = false,
    this.target,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String acceptCharset;
  final String action;
  final InputAutocomplete autocomplete;
  final String enctype;
  final FormMethod method;
  final String name;
  final bool formnovalidate;
  final TargetA target;
  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<form',
        if (acceptCharset != null) ' accept-charset="$acceptCharset"',
        if (action != null) ' action="$action"',
        if (autocomplete != null)
          ' autocomplete="${mapperInputAutocomplete(autocomplete)}"',
        if (enctype != null) ' enctype="$enctype"',
        if (method != null) ' method="${mapperFormMethod(method)}"',
        if (name != null) ' name="$name"',
        if (formnovalidate) ' formnovalidate',
        if (target != null) ' target="${target.build()}"',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</form>'
      ].join();
}

// Code for "abstract class InputBuilt implements BuiltNodeElement<dynamic>"
class Input extends NodeElement implements InputBuilt {
  const Input({
    this.accept,
    this.alt,
    this.autocomplete,
    this.disabled = false,
    this.form,
    this.formaction,
    this.formenctype,
    this.formmethod,
    this.formnovalidate = false,
    this.formtarget,
    this.list,
    this.max,
    this.maxlength,
    this.min,
    this.multiple = false,
    this.name,
    this.pattern,
    this.placeholder,
    this.readonly = false,
    this.required = false,
    this.size,
    this.src,
    this.step,
    this.type,
    this.value,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  });

  final String accept;
  final String alt;
  final InputAutocomplete autocomplete;
  final bool disabled;
  final String form;
  final String formaction;
  final String formenctype;
  final FormMethod formmethod;
  final bool formnovalidate;
  final TargetA formtarget;
  final String list;
  final String max;
  final int maxlength;
  final String min;
  final bool multiple;
  final String name;
  final String pattern;
  final String placeholder;
  final bool readonly;
  final bool required;
  final int size;
  final String src;
  final num step;
  final InputType type;
  final String value;
  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<input',
        if (accept != null) ' accept="$accept"',
        if (alt != null) ' alt="$alt"',
        if (autocomplete != null)
          ' autocomplete="${mapperInputAutocomplete(autocomplete)}"',
        if (disabled) ' disabled',
        if (form != null) ' form="$form"',
        if (formaction != null) ' formaction="$formaction"',
        if (formenctype != null) ' formenctype="$formenctype"',
        if (formmethod != null) ' formmethod="${mapperFormMethod(formmethod)}"',
        if (formnovalidate) ' formnovalidate',
        if (formtarget != null) ' formtarget="${formtarget.build()}"',
        if (list != null) ' list="$list"',
        if (max != null) ' max="$max"',
        if (maxlength != null) ' maxlength="$maxlength"',
        if (min != null) ' min="$min"',
        if (multiple) ' multiple',
        if (name != null) ' name="$name"',
        if (pattern != null) ' pattern="$pattern"',
        if (placeholder != null) ' placeholder="$placeholder"',
        if (readonly) ' readonly',
        if (required) ' required',
        if (size != null) ' size="$size"',
        if (src != null) ' src="$src"',
        if (step != null) ' step="$step"',
        if (type != null) ' type="${mapperInputType(type)}"',
        if (value != null) ' value="$value"',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>'
      ].join();
}

// Code for "abstract class DatalistBuilt implements BuiltNodeElement<ChildNodeElement>"
class Datalist extends ChildNodeElement implements DatalistBuilt {
  const Datalist({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<datalist',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</datalist>'
      ].join();
}

// Code for "abstract class SelectBuilt implements BuiltNodeElement<ChildNodeElement>"
class Select extends ChildNodeElement implements SelectBuilt {
  const Select({
    NodeElement child,
    List<NodeElement> children,
    this.disabled = false,
    this.form,
    this.multiple = false,
    this.name,
    this.required = false,
    this.size,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final bool disabled;
  final String form;
  final bool multiple;
  final String name;
  final bool required;
  final int size;
  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<select',
        if (disabled) ' disabled',
        if (form != null) ' form="$form"',
        if (multiple) ' multiple',
        if (name != null) ' name="$name"',
        if (required) ' required',
        if (size != null) ' size="$size"',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</select>'
      ].join();
}

// Code for "abstract class OptionBuilt implements BuiltNodeElement<ChildNodeElement>"
class Option extends ChildNodeElement implements OptionBuilt {
  const Option({
    NodeElement child,
    List<NodeElement> children,
    this.disabled = false,
    this.label,
    this.selected = false,
    this.value,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final bool disabled;
  final String label;
  final bool selected;
  final String value;
  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<option',
        if (disabled) ' disabled',
        if (label != null) ' label="$label"',
        if (selected) ' selected',
        if (value != null) ' value="$value"',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</option>'
      ].join();
}

// Code for "abstract class LabelBuilt implements BuiltNodeElement<ChildNodeElement>"
class Label extends ChildNodeElement implements LabelBuilt {
  const Label({
    NodeElement child,
    List<NodeElement> children,
    this.forId,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String forId;
  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<label',
        if (forId != null) ' for="$forId"',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</label>'
      ].join();
}

// Code for "abstract class ButtonBuilt implements BuiltNodeElement<ChildNodeElement>"
class Button extends ChildNodeElement implements ButtonBuilt {
  const Button({
    NodeElement child,
    List<NodeElement> children,
    this.disabled = false,
    this.form,
    this.formaction,
    this.formenctype,
    this.formmethod,
    this.formnovalidate = false,
    this.formtarget,
    this.name,
    this.type,
    this.value,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final bool disabled;
  final String form;
  final String formaction;
  final String formenctype;
  final FormMethod formmethod;
  final bool formnovalidate;
  final TargetA formtarget;
  final String name;
  final ButtonType type;
  final String value;
  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<button',
        if (disabled) ' disabled',
        if (form != null) ' form="$form"',
        if (formaction != null) ' formaction="$formaction"',
        if (formenctype != null) ' formenctype="$formenctype"',
        if (formmethod != null) ' formmethod="${mapperFormMethod(formmethod)}"',
        if (formnovalidate) ' formnovalidate',
        if (formtarget != null) ' formtarget="${formtarget.build()}"',
        if (name != null) ' name="$name"',
        if (type != null) ' type="${mapperButtonType(type)}"',
        if (value != null) ' value="$value"',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</button>'
      ].join();
}

// Code for "abstract class TextareaBuilt implements BuiltNodeElement<ChildNodeElement>"
class Textarea extends ChildNodeElement implements TextareaBuilt {
  const Textarea({
    NodeElement child,
    List<NodeElement> children,
    this.cols,
    this.disabled = false,
    this.form,
    this.maxlength,
    this.name,
    this.placeholder,
    this.readonly = false,
    this.required = false,
    this.rows,
    this.wrap,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final int cols;
  final bool disabled;
  final String form;
  final int maxlength;
  final String name;
  final String placeholder;
  final bool readonly;
  final bool required;
  final int rows;
  final WrapTextarea wrap;
  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<textarea',
        if (cols != null) ' cols="$cols"',
        if (disabled) ' disabled',
        if (form != null) ' form="$form"',
        if (maxlength != null) ' maxlength="$maxlength"',
        if (name != null) ' name="$name"',
        if (placeholder != null) ' placeholder="$placeholder"',
        if (readonly) ' readonly',
        if (required) ' required',
        if (rows != null) ' rows="$rows"',
        if (wrap != null) ' wrap="${mapperWrapTextarea(wrap)}"',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</textarea>'
      ].join();
}

// Code for "abstract class TableBuilt implements BuiltNodeElement<ChildNodeElement>"
class Table extends ChildNodeElement implements TableBuilt {
  const Table({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<table',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</table>'
      ].join();
}

// Code for "abstract class TrBuilt implements BuiltNodeElement<ChildNodeElement>"
class Tr extends ChildNodeElement implements TrBuilt {
  const Tr({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<tr',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</tr>'
      ].join();
}

// Code for "abstract class TdBuilt implements BuiltNodeElement<ChildNodeElement>"
class Td extends ChildNodeElement implements TdBuilt {
  const Td({
    NodeElement child,
    List<NodeElement> children,
    this.colspan,
    this.headers,
    this.scope,
    this.rowspan,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final int colspan;
  final String headers;
  final ScopeTable scope;
  final int rowspan;
  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<td',
        if (colspan != null) ' colspan="$colspan"',
        if (headers != null) ' headers="$headers"',
        if (scope != null) ' scope="${mapperScopeTable(scope)}"',
        if (rowspan != null) ' rowspan="$rowspan"',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</td>'
      ].join();
}

// Code for "abstract class ThBuilt implements BuiltNodeElement<ChildNodeElement>"
class Th extends ChildNodeElement implements ThBuilt {
  const Th({
    NodeElement child,
    List<NodeElement> children,
    this.colspan,
    this.scope,
    this.rowspan,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final int colspan;
  final ScopeTable scope;
  final int rowspan;
  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<th',
        if (colspan != null) ' colspan="$colspan"',
        if (scope != null) ' scope="${mapperScopeTable(scope)}"',
        if (rowspan != null) ' rowspan="$rowspan"',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</th>'
      ].join();
}

// Code for "abstract class CaptionBuilt implements BuiltNodeElement<ChildNodeElement>"
class Caption extends ChildNodeElement implements CaptionBuilt {
  const Caption({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<caption',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</caption>'
      ].join();
}

// Code for "abstract class ColBuilt implements BuiltNodeElement<ChildNodeElement>"
class Col extends ChildNodeElement implements ColBuilt {
  const Col({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<col',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</col>'
      ].join();
}

// Code for "abstract class ColgroupBuilt implements BuiltNodeElement<ChildNodeElement>"
class Colgroup extends ChildNodeElement implements ColgroupBuilt {
  const Colgroup({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<colgroup',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</colgroup>'
      ].join();
}

// Code for "abstract class TbodyBuilt implements BuiltNodeElement<ChildNodeElement>"
class Tbody extends ChildNodeElement implements TbodyBuilt {
  const Tbody({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<tbody',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</tbody>'
      ].join();
}

// Code for "abstract class TheadBuilt implements BuiltNodeElement<ChildNodeElement>"
class Thead extends ChildNodeElement implements TheadBuilt {
  const Thead({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<thead',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</thead>'
      ].join();
}

// Code for "abstract class TfootBuilt implements BuiltNodeElement<ChildNodeElement>"
class Tfoot extends ChildNodeElement implements TfootBuilt {
  const Tfoot({
    NodeElement child,
    List<NodeElement> children,
    this.accesskey,
    this.autofocus = false,
    this.classList,
    this.contentEditable = false,
    this.contextmenu,
    this.dir,
    this.hidden = false,
    this.id,
    this.lang,
    this.role,
    this.spellcheck = false,
    this.styleList,
    this.tabindex,
    this.title,
    this.onblur,
    this.onchange,
    this.onclick,
    this.ondblclick,
    this.onfocus,
    this.onkeydown,
    this.onkeypress,
    this.onkeyup,
    this.onload,
    this.onmousedown,
    this.onmousemove,
    this.onmouseout,
    this.onmouseover,
    this.onmouseup,
    this.onreset,
    this.onselect,
    this.onsubmit,
    this.onunload,
  }) : super(child: child, children: children);

  final String accesskey;
  final bool autofocus;
  final List<StyleClass> classList;
  final bool contentEditable;
  final String contextmenu;
  final String dir;
  final bool hidden;
  final String id;
  final String lang;
  final String role;
  final bool spellcheck;
  final List<StyleCSS> styleList;
  final int tabindex;
  final String title;
  final String onblur;
  final String onchange;
  final String onclick;
  final String ondblclick;
  final String onfocus;
  final String onkeydown;
  final String onkeypress;
  final String onkeyup;
  final String onload;
  final String onmousedown;
  final String onmousemove;
  final String onmouseout;
  final String onmouseover;
  final String onmouseup;
  final String onreset;
  final String onselect;
  final String onsubmit;
  final String onunload;

  @override
  String build() => [
        '<tfoot',
        if (accesskey != null) ' accesskey="$accesskey"',
        if (autofocus) ' autofocus',
        if (classList != null && classList.isNotEmpty)
          ' class="${classList.map((e) => e.name).join(' ')}"',
        if (contentEditable) ' contenteditable',
        if (contextmenu != null) ' contextmenu="$contextmenu"',
        if (dir != null) ' dir="$dir"',
        if (hidden) ' hidden',
        if (id != null) ' id="$id"',
        if (lang != null) ' lang="$lang"',
        if (role != null) ' role="$role"',
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.build()).join(';')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        if (onblur != null) ' onblur="$onblur"',
        if (onchange != null) ' onchange="$onchange"',
        if (onclick != null) ' onclick="$onclick"',
        if (ondblclick != null) ' ondblclick="$ondblclick"',
        if (onfocus != null) ' onfocus="$onfocus"',
        if (onkeydown != null) ' onkeydown="$onkeydown"',
        if (onkeypress != null) ' onkeypress="$onkeypress"',
        if (onkeyup != null) ' onkeyup="$onkeyup"',
        if (onload != null) ' onload="$onload"',
        if (onmousedown != null) ' onmousedown="$onmousedown"',
        if (onmousemove != null) ' onmousemove="$onmousemove"',
        if (onmouseout != null) ' onmouseout="$onmouseout"',
        if (onmouseover != null) ' onmouseover="$onmouseover"',
        if (onmouseup != null) ' onmouseup="$onmouseup"',
        if (onreset != null) ' onreset="$onreset"',
        if (onselect != null) ' onselect="$onselect"',
        if (onsubmit != null) ' onsubmit="$onsubmit"',
        if (onunload != null) ' onunload="$onunload"',
        '>',
        super.build(),
        '</tfoot>'
      ].join();
}
