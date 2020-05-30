import '../../html.dart';

class TextDecorationCSS {
  final ColorCSS color;
  final TextDecorationTypeCSS type;
  final TextDecorationStyleCSS style;

  const TextDecorationCSS({this.color, this.type, this.style});

  String get text {
    if (type == TextDecorationTypeCSS.none) {
      return 'none';
    } else {
      return [
        if (color != null) color.text,
        if (type != null) _mapperTextDecorationCSS(type),
        if (style != null) _mapperTextDecorationStyleCSS(style),
      ].join(' ');
    }
  }

  String _mapperTextDecorationCSS(TextDecorationTypeCSS value) {
    switch (value) {
      case TextDecorationTypeCSS.lineThrough:
        return 'line-through';
      case TextDecorationTypeCSS.overline:
        return 'overline';
      case TextDecorationTypeCSS.underline:
        return 'underline';
      case TextDecorationTypeCSS.none:
        return 'none';
      default:
        throw Exception('Invalid value TextDecorationCSS');
    }
  }

  String _mapperTextDecorationStyleCSS(TextDecorationStyleCSS value) {
    switch (value) {
      case TextDecorationStyleCSS.solid:
        return 'solid';
      case TextDecorationStyleCSS.double:
        return 'double';
      case TextDecorationStyleCSS.dotted:
        return 'dotted';
      case TextDecorationStyleCSS.dashed:
        return 'dashed';
      case TextDecorationStyleCSS.wavy:
        return 'wavy';
      default:
        throw Exception('Invalid value TextDecorationStyleCSS');
    }
  }

  static const none = TextDecorationCSS(type: TextDecorationTypeCSS.none);
  static const lineThrough = TextDecorationCSS(type: TextDecorationTypeCSS.lineThrough);
  static const overline = TextDecorationCSS(type: TextDecorationTypeCSS.overline);
  static const underline = TextDecorationCSS(type: TextDecorationTypeCSS.underline);
}

enum TextDecorationTypeCSS { lineThrough, overline, underline, none }
enum TextDecorationStyleCSS { solid, double, dotted, dashed, wavy }
