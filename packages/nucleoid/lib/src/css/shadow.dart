import 'package:nucleoid/html.dart';

class BoxShadowCSS {
  final ColorCSS color;
  final SizeCSS offsetX;
  final SizeCSS offsetY;
  final SizeCSS blurRadius;
  final SizeCSS? spreadRadius;
  final bool inset;

  const BoxShadowCSS({
    this.color = ColorsCSS.black,
    this.offsetX = SizeCSS.zero,
    this.offsetY = SizeCSS.zero,
    this.blurRadius = SizeCSS.zero,
    this.spreadRadius,
    this.inset = false,
  });

  String build() => [
    if (inset) 'inset',
    offsetX.build(),
    offsetY.build(),
    blurRadius.build(),
    if (spreadRadius != null) spreadRadius!.build(),
    color.build(),
  ].join(' ');

  BoxShadowCSS copyWith({
    ColorCSS? color,
    SizeCSS? offsetX,
    SizeCSS? offsetY,
    SizeCSS? blurRadius,
    SizeCSS? spreadRadius,
    bool? inset,
  }) => BoxShadowCSS(
    color: color ?? this.color,
    offsetX: offsetX ?? this.offsetX,
    offsetY: offsetY ?? this.offsetY,
    blurRadius: blurRadius ?? this.blurRadius,
    spreadRadius: spreadRadius ?? this.spreadRadius,
    inset: inset ?? this.inset,
  );
}

class BoxShadowCSSList extends BoxShadowCSS {
  final List<BoxShadowCSS> list;

  BoxShadowCSSList(this.list);

  @override
  String build() => list.map((e) => e.build()).join(',');
}

class DropShadowCSS {
  final ColorCSS color;
  final SizeCSS offsetX;
  final SizeCSS offsetY;
  final SizeCSS blurRadius;

  const DropShadowCSS({
    this.color = ColorsCSS.black,
    this.offsetX = SizeCSS.zero,
    this.offsetY = SizeCSS.zero,
    this.blurRadius = SizeCSS.zero,
  });

  String build() => [
    offsetX.build(),
    offsetY.build(),
    blurRadius.build(),
    color.build(),
  ].join(' ');

  DropShadowCSS copyWith({
    ColorCSS? color,
    SizeCSS? offsetX,
    SizeCSS? offsetY,
    SizeCSS? blurRadius,
  }) => DropShadowCSS(
    color: color ?? this.color,
    offsetX: offsetX ?? this.offsetX,
    offsetY: offsetY ?? this.offsetY,
    blurRadius: blurRadius ?? this.blurRadius,
  );
}

class DropShadowCSSList extends DropShadowCSS {
  final List<DropShadowCSS> list;

  const DropShadowCSSList(this.list);

  @override
  String build() => list.map((e) => e.build()).join(',');
}
