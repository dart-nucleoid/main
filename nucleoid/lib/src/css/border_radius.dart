import 'size.dart';

class _BorderRadiusCSSBase {
  final SizeCSS topLeft;
  final SizeCSS topRight;
  final SizeCSS bottomLeft;
  final SizeCSS bottomRight;

  const _BorderRadiusCSSBase(this.topLeft, this.topRight, this.bottomLeft, this.bottomRight);
}

class BorderRadiusCSS extends _BorderRadiusCSSBase {
  const BorderRadiusCSS.only(
      {SizeCSS topLeft = SizeCSS.zero,
      SizeCSS topRight = SizeCSS.zero,
      SizeCSS bottomLeft = SizeCSS.zero,
      SizeCSS bottomRight = SizeCSS.zero})
      : super(topLeft, topRight, bottomLeft, bottomRight);

  const BorderRadiusCSS.all(SizeCSS size) : super(size, size, size, size);

  const BorderRadiusCSS.symmetric(
      {SizeCSS topLeftBottomRight = SizeCSS.zero, SizeCSS bottomLeftTopRight = SizeCSS.zero})
      : super(topLeftBottomRight, bottomLeftTopRight, bottomLeftTopRight, topLeftBottomRight);

  const BorderRadiusCSS.horizontal({SizeCSS left = SizeCSS.zero, SizeCSS right = SizeCSS.zero})
      : super(left, right, left, right);

  const BorderRadiusCSS.vertical({SizeCSS top = SizeCSS.zero, SizeCSS bottom = SizeCSS.zero})
      : super(top, top, bottom, bottom);

  String build() {
    if (<String>{topLeft.build(), topRight.build(), bottomLeft.build(), bottomRight.build()}.length == 1) {
      return topLeft.build() ?? 0;
    } else if (topLeft.build() == bottomRight.build() && topRight.build() == bottomLeft.build()) {
      return [topLeft.build() ?? 0, topRight.build() ?? 0].join(' ');
    } else if (bottomRight.build() == bottomLeft.build() && topLeft.build() != topRight.build()) {
      return [topLeft.build() ?? 0, topRight.build() ?? 0, bottomRight.build() ?? 0].join(' ');
    }
    return [topLeft.build() ?? 0, topRight.build() ?? 0, bottomRight.build() ?? 0, bottomLeft.build() ?? 0].join(' ');
  }
}
