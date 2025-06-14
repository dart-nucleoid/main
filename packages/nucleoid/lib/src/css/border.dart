import '../../html.dart';

enum _TypeBorderCSS { value, inherit, none }

class BorderCSS {
  final ColorCSS? color;
  final BorderStyleCSS? style;
  final SizeCSS? width;
  final _TypeBorderCSS type;

  const BorderCSS({this.color, this.style, this.width})
    : this.type = _TypeBorderCSS.value;
  const BorderCSS._withType(this.type)
    : this.color = null,
      this.style = null,
      this.width = null;

  String build() {
    if (type == _TypeBorderCSS.value) {
      return [
        if (color != null) color!.build(),
        if (style != null) _mapperBorderStyleCSS(style!),
        if (width != null) width!.build(),
      ].join(' ');
    } else {
      return _mapperTypeBorderCSS(type);
    }
  }

  String _mapperTypeBorderCSS(_TypeBorderCSS value) {
    switch (value) {
      case _TypeBorderCSS.none:
        return 'none';
      case _TypeBorderCSS.inherit:
        return 'inherit';
      default:
        throw Exception('Invalid value TypeBorderCSS');
    }
  }

  static const inherit = BorderCSS._withType(_TypeBorderCSS.inherit);
  static const none = BorderCSS._withType(_TypeBorderCSS.none);
}

enum BorderStyleCSS {
  none,
  hidden,
  dotted,
  dashed,
  solid,
  double,
  groove,
  ridge,
  inset,
  outset,
  inherit,
}

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
  }
}
