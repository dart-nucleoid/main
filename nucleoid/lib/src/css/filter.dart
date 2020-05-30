import 'package:nucleoid/html.dart';

class FilterCSS {
  final SizeCSS blur;
  final double brightness;
  final double contrast;
  final DropShadowCSS dropShadow;
  final double grayscale;
  final AngleCSS hueRotate;
  final double invert;
  final double opacity;
  final double saturate;
  final double sepia;
  final String url;
  final _TypeFilterCSS type;

  const FilterCSS({
    this.blur,
    this.brightness,
    this.contrast,
    this.dropShadow,
    this.grayscale,
    this.hueRotate,
    this.invert,
    this.opacity,
    this.saturate,
    this.sepia,
    this.url,
    this.type = _TypeFilterCSS.value,
  });

  String get text {
    if (type == _TypeFilterCSS.value) {
      return [
        if (blur != null) 'blur(${blur.text})',
        if (brightness != null) 'brightness($brightness)',
        if (contrast != null) 'contrast($contrast)',
        if (dropShadow != null) 'drop-shadow(${dropShadow.text})',
        if (grayscale != null) 'grayscale($grayscale)',
        if (hueRotate != null) 'hue-rotate(${hueRotate.degText})',
        if (invert != null) 'invert($invert)',
        if (opacity != null) 'opacity($opacity)',
        if (saturate != null) 'saturate($saturate)',
        if (sepia != null) 'sepia($sepia)',
        if (url != null) 'url($url)',
      ].join(' ');
    } else {
      return _mapper(type);
    }
  }

  String _mapper(_TypeFilterCSS value) {
    switch (value) {
      case _TypeFilterCSS.none:
        return 'none';
      default:
        throw Exception('Invalid value _TypeFilterCSS');
    }
  }

  static const none = FilterCSS(type: _TypeFilterCSS.none);
}

enum _TypeFilterCSS { value, none }

class FilterCSSList extends FilterCSS {
  final List<FilterCSS> list;

  FilterCSSList(this.list);

  @override
  String get text => list.map((e) => e.text).join(' ');
}