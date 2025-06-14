import 'dart:math' as math;

class _AngleCSSBase {
  static const degrees2Radians = math.pi / 180.0;
  static const radians2Degrees = 180.0 / math.pi;

  final num? degrees;
  final num? radians;

  const _AngleCSSBase({this.degrees, this.radians});
}

class AngleCSS extends _AngleCSSBase {
  const AngleCSS.rad(num radians) : super(radians: radians);

  const AngleCSS.deg(num degrees) : super(degrees: degrees);

  num get deg => degrees ?? radians2degrees(radians!);

  num get rad => radians ?? degrees2radians(degrees!);

  static num degrees2radians(num degrees) =>
      degrees * _AngleCSSBase.degrees2Radians;

  static num radians2degrees(num radians) =>
      radians * _AngleCSSBase.radians2Degrees;

  String get degText => '${deg}deg';

  String get radText => '$rad';
}
