import 'size.dart';

class _BorderRadiusCSSBase {
  final SizeCSS topLeft;
  final SizeCSS topRight;
  final SizeCSS bottomLeft;
  final SizeCSS bottomRight;

  const _BorderRadiusCSSBase(this.topLeft, this.topRight, this.bottomLeft, this.bottomRight);
}

class BorderRadiusCSS extends _BorderRadiusCSSBase {
  const BorderRadiusCSS.only({SizeCSS topLeft, SizeCSS topRight, SizeCSS bottomLeft, SizeCSS bottomRight})
      : super(topLeft, topRight, bottomLeft, bottomRight);

  const BorderRadiusCSS.all(SizeCSS size) : super(size, size, size, size);

  const BorderRadiusCSS.symmetric({SizeCSS topLeftBottomRight, SizeCSS bottomLeftTopRight})
      : super(topLeftBottomRight, bottomLeftTopRight, bottomLeftTopRight, topLeftBottomRight);

  const BorderRadiusCSS.horizontal({SizeCSS left, SizeCSS right}) : super(left, right, left, right);

  const BorderRadiusCSS.vertical({SizeCSS top, SizeCSS bottom}) : super(top, top, bottom, bottom);

  String get text {
    if (<String>{topLeft.text, topRight.text, bottomLeft.text, bottomRight.text}.length == 1) {
      return topLeft.text ?? 0;
    } else if (topLeft.text == bottomRight.text && topRight.text == bottomLeft.text) {
      return [topLeft.text ?? 0, topRight.text ?? 0].join(' ');
    } else if (bottomRight.text == bottomLeft.text && topLeft.text != topRight.text) {
      return [topLeft.text ?? 0, topRight.text ?? 0, bottomRight.text ?? 0].join(' ');
    }
    return [topLeft.text ?? 0, topRight.text ?? 0, bottomRight.text ?? 0, bottomLeft.text ?? 0].join(' ');
  }
}
