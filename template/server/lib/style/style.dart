import 'package:loggable/loggable.dart';
import 'package:nucleoid/extension.dart';
import 'package:nucleoid/html.dart';
import 'package:nucleoid/nucleoid.dart';

const accentColorH = ColorCSS(0xff25a97c);
const colorBackground = ColorCSS(0xffc3c3c3);
const h1Size = SizeCSS.em(2);

class Style extends BuildResponse with Loggable {
  final List<StyleElement> _styleClassList = [
    _a,
    _allTagStyle,
    _bodyTagStyle,
    _hAllTagStyle,
    _h1Style,
    _contentStyle,
    centerStyle,
    underlineStyle,
    _codeStyle,
  ];

  Style(Request request) : super(request: request);

  @override
  Response buildResponse() {
    return Response.ok(
      echoAllStyleClass(_styleClassList),
      headers: {'Content-Type': 'text/css'},
    );
  }
}

const _allTagStyle = StyleElement(
  name: '*',
  style: StyleCSS(
    fontFamily: '"Verdana"',
    boxSizing: BoxSizingCSS.borderBox,
    margin: EdgeInsetsCSS.all(SizeCSS.zero),
    textDecoration: TextDecorationCSS.none,
  ),
);

const _a = StyleElement(
  name: 'a',
  style: StyleCSS(color: ColorCSS(0xff278db5)),
  child: StyleElement(
    combinator: ':',
    name: 'hover',
    style: StyleCSS(
      color: ColorCSS(0xffefa626),
      textDecoration: TextDecorationCSS.underline,
    ),
  ),
);

const _bodyTagStyle = StyleElement(
  name: 'body',
  style: StyleCSS(backgroundColor: colorBackground),
);

final _hAllTagStyle = StyleElement(
  name: 'h1, h2, h3, h4, .h1, .h2, .h3, .h4',
  style: StyleCSS(
    margin: EdgeInsetsCSS.symmetric(vertical: 20.px, horizontal: 10.px),
    color: accentColorH,
    fontWeight: FontWeightCSS.w400,
  ),
);

final _h1Style = StyleElement(
  name: 'h1',
  style: StyleCSS(fontSize: h1Size),
  width: {600: StyleCSS(fontSize: h1Size - 0.2.em)},
);

final _contentStyle = StyleElement(
  name: '#content',
  style: StyleCSS(
    width: 100.pc,
    maxWidth: 800.px,
    margin: EdgeInsetsCSS.all(SizeCSS.auto),
    backgroundColor: ColorsCSS.white,
    padding: EdgeInsetsCSS.symmetric(horizontal: 20.px, vertical: 10.px),
    lineHeight: 1.8.em,
    overflowWrap: OverflowWrapCSS.breakWord,
    minHeight: 100.pc,
  ),
);

final centerStyle = StyleClass(
  name: 'center',
  style: StyleCSS(
    textAlign: TextAlignCSS.center,
    display: DisplayCSS.block,
    margin: EdgeInsetsCSS.auto,
  ),
);

final underlineStyle = StyleClass(
  name: 'underline',
  style: StyleCSS(
    textDecoration: TextDecorationCSS(
      color: ColorsCSS.red,
      type: TextDecorationTypeCSS.underline,
      style: TextDecorationStyleCSS.wavy,
    ),
  ),
);

final _codeStyle = StyleElement(
  name: 'code',
  style: StyleCSS(
    backgroundColor: ColorCSS(0xffececec),
    padding: EdgeInsetsCSS.symmetric(horizontal: 20.px, vertical: 10.px),
    width: 100.pc,
    display: DisplayCSS.block,
    margin: EdgeInsetsCSS.only(top: 10.px, bottom: 20.px),
  ),
);
