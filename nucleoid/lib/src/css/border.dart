import '../../html.dart';

class BorderCSS {
  final ColorCSS color;
  final BorderStyleCSS style;
  final SizeCSS width;
  final bool inherit;

  const BorderCSS({this.color, this.style, this.width, this.inherit = false});

  String get text => inherit
      ? 'inherit'
      : [
          if (color != null) color.text,
          if (style != null) _mapperBorderStyleCSS(style),
          if (width != null) width.text,
        ].join(' ');
}

enum BorderStyleCSS { none, hidden, dotted, dashed, solid, double, groove, ridge, inset, outset, inherit }

String _mapperBorderStyleCSS(BorderStyleCSS value) {
  switch (value) {
    case BorderStyleCSS.none:
      return 'none';
    case BorderStyleCSS.hidden:
      return 'hidden';
    case BorderStyleCSS.dotted:
      return 'dotted';
    case BorderStyleCSS.dashed:
      return 'dashed';
    case BorderStyleCSS.solid:
      return 'solid';
    case BorderStyleCSS.double:
      return 'double';
    case BorderStyleCSS.groove:
      return 'groove';
    case BorderStyleCSS.ridge:
      return 'ridge';
    case BorderStyleCSS.inset:
      return 'inset';
    case BorderStyleCSS.outset:
      return 'outset';
    case BorderStyleCSS.inherit:
      return 'inherit';
    default:
      throw Exception('Invalid value BorderStyleCSS');
  }
}
