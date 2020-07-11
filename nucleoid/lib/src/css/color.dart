/// [ColorCSS] base on Flutter class: Color
class ColorCSS {
  final int value;

  const ColorCSS(int value) : value = value & 0xFFFFFFFF;

  const ColorCSS.fromARGB(int a, int r, int g, int b)
      : value = (((a & 0xff) << 24) | ((r & 0xff) << 16) | ((g & 0xff) << 8) | ((b & 0xff) << 0)) & 0xFFFFFFFF;

  const ColorCSS.fromRGBO(int r, int g, int b, double opacity)
      : value = ((((opacity * 0xff ~/ 1) & 0xff) << 24) | ((r & 0xff) << 16) | ((g & 0xff) << 8) | ((b & 0xff) << 0)) &
            0xFFFFFFFF;

  int get alpha => (0xff000000 & value) >> 24;

  double get opacity => alpha / 0xFF;

  int get red => (0x00ff0000 & value) >> 16;

  int get green => (0x0000ff00 & value) >> 8;

  int get blue => (0x000000ff & value) >> 0;

  ColorCSS withAlpha(int a) {
    return ColorCSS.fromARGB(a, red, green, blue);
  }

  ColorCSS withOpacity(double opacity) {
    assert(opacity >= 0.0 && opacity <= 1.0);
    return withAlpha((255.0 * opacity).round());
  }

  /// [text] getter String color for CSS HTML
  String build() {
    var a = alpha.toRadixString(16).padLeft(2, '0');
    if (a == 'ff') a = '';
    var hex = value.toRadixString(16).substring(2).padLeft(6, '0');

    return '#$hex$a';
  }
}
