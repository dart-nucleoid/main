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
  final bool spellcheck;
  final List<StyleElement> styleList;
  final String tabindex;
  final String title;

  @override
  String get html => [
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
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.style.text).join(' ')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        '>',
        super.html,
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
  final bool spellcheck;
  final List<StyleElement> styleList;
  final String tabindex;
  final String title;

  @override
  String get html => [
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
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.style.text).join(' ')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        '>',
        super.html,
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
  final bool spellcheck;
  final List<StyleElement> styleList;
  final String tabindex;
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
  String get html => [
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
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.style.text).join(' ')}"',
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
        super.html,
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
  String get html => ['<title', '>', super.html, '</title>'].join();
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
  final bool spellcheck;
  final List<StyleElement> styleList;
  final String tabindex;
  final String title;

  @override
  String get html => [
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
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.style.text).join(' ')}"',
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
  String get html => [
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
  String get html => [
        '<script',
        if (async) ' async',
        if (defer) ' defer',
        if (src != null) ' src="$src"',
        if (type != null) ' type="$type"',
        '>',
        super.html,
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
  String get html => ['<header', '>', super.html, '</header>'].join();
}

// Code for "abstract class NavBuilt implements BuiltNodeElement<ChildNodeElement>"
class Nav extends ChildNodeElement implements NavBuilt {
  const Nav({
    NodeElement child,
    List<NodeElement> children,
  }) : super(child: child, children: children);

  @override
  String get html => ['<nav', '>', super.html, '</nav>'].join();
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
  final bool spellcheck;
  final List<StyleElement> styleList;
  final String tabindex;
  final String title;

  @override
  String get html => [
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
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.style.text).join(' ')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        '>',
        super.html,
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
  final bool spellcheck;
  final List<StyleElement> styleList;
  final String tabindex;
  final String title;

  @override
  String get html => [
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
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.style.text).join(' ')}"',
        if (tabindex != null) ' tabindex="$tabindex"',
        if (title != null) ' title="$title"',
        '>',
        super.html,
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
  final bool spellcheck;
  final List<StyleElement> styleList;
  final String tabindex;
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
  String get html => [
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
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.style.text).join(' ')}"',
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
        super.html,
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
  String get html => ['<article', '>', super.html, '</article>'].join();
}

// Code for "abstract class FooterBuilt implements BuiltNodeElement<ChildNodeElement>"
class Footer extends ChildNodeElement implements FooterBuilt {
  const Footer({
    NodeElement child,
    List<NodeElement> children,
  }) : super(child: child, children: children);

  @override
  String get html => ['<footer', '>', super.html, '</footer>'].join();
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
  final bool spellcheck;
  final List<StyleElement> styleList;
  final String tabindex;
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
  String get html => [
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
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.style.text).join(' ')}"',
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
        super.html,
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
  final bool spellcheck;
  final List<StyleElement> styleList;
  final String tabindex;
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
  String get html => [
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
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.style.text).join(' ')}"',
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
        super.html,
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
  final bool spellcheck;
  final List<StyleElement> styleList;
  final String tabindex;
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
  String get html => [
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
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.style.text).join(' ')}"',
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
        super.html,
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
  final bool spellcheck;
  final List<StyleElement> styleList;
  final String tabindex;
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
  String get html => [
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
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.style.text).join(' ')}"',
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
        super.html,
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
  final bool spellcheck;
  final List<StyleElement> styleList;
  final String tabindex;
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
  String get html => [
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
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.style.text).join(' ')}"',
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
        super.html,
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
  final bool spellcheck;
  final List<StyleElement> styleList;
  final String tabindex;
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
  String get html => [
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
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.style.text).join(' ')}"',
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
        super.html,
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
  final bool spellcheck;
  final List<StyleElement> styleList;
  final String tabindex;
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
  String get html => [
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
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.style.text).join(' ')}"',
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
        super.html,
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
  final bool spellcheck;
  final List<StyleElement> styleList;
  final String tabindex;
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
  String get html => [
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
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.style.text).join(' ')}"',
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
        super.html,
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
  final bool spellcheck;
  final List<StyleElement> styleList;
  final String tabindex;
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
  String get html => [
        '<a',
        if (download) ' download',
        if (href != null) ' href="$href"',
        if (hreflang != null) ' hreflang="$hreflang"',
        if (rel != null) ' rel="${mapperRelA(rel)}"',
        if (target != null) ' target="${target.text}"',
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
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.style.text).join(' ')}"',
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
        super.html,
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
  final bool spellcheck;
  final List<StyleElement> styleList;
  final String tabindex;
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
  String get html => [
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
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.style.text).join(' ')}"',
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
  final bool spellcheck;
  final List<StyleElement> styleList;
  final String tabindex;
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
  String get html => [
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
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.style.text).join(' ')}"',
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
        super.html,
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
  final bool spellcheck;
  final List<StyleElement> styleList;
  final String tabindex;
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
  String get html => [
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
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.style.text).join(' ')}"',
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
        super.html,
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
  final bool spellcheck;
  final List<StyleElement> styleList;
  final String tabindex;
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
  String get html => [
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
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.style.text).join(' ')}"',
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
        super.html,
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
  final bool spellcheck;
  final List<StyleElement> styleList;
  final String tabindex;
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
  String get html => [
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
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.style.text).join(' ')}"',
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
        super.html,
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
  final bool spellcheck;
  final List<StyleElement> styleList;
  final String tabindex;
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
  String get html => [
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
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.style.text).join(' ')}"',
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
        super.html,
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
  final bool spellcheck;
  final List<StyleElement> styleList;
  final String tabindex;
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
  String get html => [
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
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.style.text).join(' ')}"',
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
        super.html,
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
  final bool spellcheck;
  final List<StyleElement> styleList;
  final String tabindex;
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
  String get html => [
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
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.style.text).join(' ')}"',
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
        super.html,
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
  final bool spellcheck;
  final List<StyleElement> styleList;
  final String tabindex;
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
  String get html => [
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
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.style.text).join(' ')}"',
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
        super.html,
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
  final bool spellcheck;
  final List<StyleElement> styleList;
  final String tabindex;
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
  String get html => [
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
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.style.text).join(' ')}"',
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
        super.html,
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
  final bool spellcheck;
  final List<StyleElement> styleList;
  final String tabindex;
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
  String get html => [
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
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.style.text).join(' ')}"',
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
        super.html,
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
  final bool spellcheck;
  final List<StyleElement> styleList;
  final String tabindex;
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
  String get html => [
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
        if (spellcheck) ' spellcheck',
        if (styleList != null && styleList.isNotEmpty)
          ' style="${styleList.map((e) => e.style.text).join(' ')}"',
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
        super.html,
        '</time>'
      ].join();
}
