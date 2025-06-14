enum UnitsCSS { px, em, rem, percent, vw, vh, vMin, vMax, num }

class _SizeCSSBase {
  final num size;
  final UnitsCSS units;
  final _TypeSizeCSS type;
  final String? _calc;

  const _SizeCSSBase(
    this.size,
    this.units, [
    this.type = _TypeSizeCSS.value,
    this._calc,
  ]);
}

class SizeCSS extends _SizeCSSBase {
  const SizeCSS(num size, UnitsCSS units, _TypeSizeCSS type)
    : super(size, units, type);

  const SizeCSS._type(_TypeSizeCSS type) : super(0, UnitsCSS.num, type);

  const SizeCSS.px(num size) : super(size, UnitsCSS.px);

  const SizeCSS.em(num size) : super(size, UnitsCSS.em);

  const SizeCSS.rem(num size) : super(size, UnitsCSS.rem);

  const SizeCSS.percent(num size) : super(size, UnitsCSS.percent);

  const SizeCSS.vw(num size) : super(size, UnitsCSS.vw);

  const SizeCSS.vh(num size) : super(size, UnitsCSS.vh);

  const SizeCSS.vMin(num size) : super(size, UnitsCSS.vMin);

  const SizeCSS.vMax(num size) : super(size, UnitsCSS.vMax);

  const SizeCSS.num(num size) : super(size, UnitsCSS.num);

  const SizeCSS.calc(String calc)
    : super(0, UnitsCSS.num, _TypeSizeCSS.calc, calc);

  bool get _isCeil => size % 1 == 0;

  String get calc => _calc != null ? '($_calc)' : build();

  String get calcText => _calc ?? build();

  String build() {
    switch (type) {
      case _TypeSizeCSS.value:
        return '${(_isCeil ? size.toInt() : size)}${_mapper(units)}';
      case _TypeSizeCSS.calc:
        return 'calc($calcText)';
      case _TypeSizeCSS.auto:
        return 'auto';
      case _TypeSizeCSS.fitContent:
        return 'fit-content';
      case _TypeSizeCSS.maxContent:
        return 'max-content';
      case _TypeSizeCSS.minContent:
        return 'min-content';
      case _TypeSizeCSS.inherit:
        return 'inherit';
      case _TypeSizeCSS.zero:
        return '0';
    }
  }

  String _mapper(UnitsCSS units) {
    switch (units) {
      case UnitsCSS.px:
        return 'px';
      case UnitsCSS.em:
        return 'em';
      case UnitsCSS.rem:
        return 'rem';
      case UnitsCSS.percent:
        return '%';
      case UnitsCSS.vw:
        return 'vw';
      case UnitsCSS.vh:
        return 'vh';
      case UnitsCSS.vMin:
        return 'vmin';
      case UnitsCSS.vMax:
        return 'vmax';
      case UnitsCSS.num:
        return '';
    }
  }

  static const auto = SizeCSS._type(_TypeSizeCSS.auto);

  static const fitContent = SizeCSS._type(_TypeSizeCSS.fitContent);

  static const maxContent = SizeCSS._type(_TypeSizeCSS.maxContent);

  static const minContent = SizeCSS._type(_TypeSizeCSS.minContent);

  static const inherit = SizeCSS._type(_TypeSizeCSS.inherit);

  static const zero = SizeCSS._type(_TypeSizeCSS.zero);

  SizeCSS operator -() => SizeCSS(-size, units, type);

  SizeCSS operator +(SizeCSS other) => _canMergeOtherUnits(other)
      ? SizeCSS(size + other.size, units, type)
      : SizeCSS.calc('$calc + ${other.calc}');

  SizeCSS operator -(SizeCSS other) => _canMergeOtherUnits(other)
      ? SizeCSS(size - other.size, units, type)
      : SizeCSS.calc('$calc - ${other.calc}');

  SizeCSS operator *(SizeCSS other) => _canMergeOtherUnits(other)
      ? SizeCSS(size * other.size, units, type)
      : SizeCSS.calc('$calc * ${other.calc}');

  SizeCSS operator /(SizeCSS other) => _canMergeOtherUnits(other)
      ? SizeCSS(size / other.size, units, type)
      : SizeCSS.calc('$calc / ${other.calc}');

  bool _canMergeOtherUnits(SizeCSS other) {
    if (_canMergeType(type) && _canMergeType(other.type)) {
      return units == other.units || size == 0 || other.size == 0;
    } else {
      throw Exception('Invalid merge type: $type, ${other.type}');
    }
  }

  bool _canMergeType(_TypeSizeCSS type) {
    switch (type) {
      case _TypeSizeCSS.value:
      case _TypeSizeCSS.zero:
      case _TypeSizeCSS.calc:
        return true;
      default:
        return false;
    }
  }
}

enum _TypeSizeCSS {
  value,
  auto,
  fitContent,
  maxContent,
  minContent,
  inherit,
  zero,
  calc,
}

class _EdgeInsetsCSSBase {
  final SizeCSS left;
  final SizeCSS top;
  final SizeCSS right;
  final SizeCSS bottom;
  final _TypeSizeCSS type;

  const _EdgeInsetsCSSBase({
    SizeCSS? left,
    SizeCSS? top,
    SizeCSS? right,
    SizeCSS? bottom,
    this.type = _TypeSizeCSS.value,
  }) : left = left ?? SizeCSS.zero,
       top = top ?? SizeCSS.zero,
       right = right ?? SizeCSS.zero,
       bottom = bottom ?? SizeCSS.zero;
}

class EdgeInsetsCSS extends _EdgeInsetsCSSBase {
  const EdgeInsetsCSS.only({
    SizeCSS? left,
    SizeCSS? top,
    SizeCSS? right,
    SizeCSS? bottom,
  }) : super(
         left: left,
         top: top,
         right: right,
         bottom: bottom,
         type: _TypeSizeCSS.value,
       );

  const EdgeInsetsCSS.all(SizeCSS size)
    : super(left: size, top: size, right: size, bottom: size);

  const EdgeInsetsCSS.symmetric({SizeCSS? vertical, SizeCSS? horizontal})
    : super(
        left: horizontal,
        top: vertical,
        right: horizontal,
        bottom: vertical,
      );

  String build() {
    if (type == _TypeSizeCSS.value) {
      if (<String>{
            left.build(),
            top.build(),
            right.build(),
            bottom.build(),
          }.length ==
          1) {
        return left.build();
      } else if (left.build() == right.build() &&
          top.build() == bottom.build()) {
        return [top.build(), left.build()].join(' ');
      } else if (left.build() == right.build() &&
          top.build() != bottom.build()) {
        return [top.build(), left.build(), bottom.build()].join(' ');
      }
      return [
        top.build(),
        right.build(),
        bottom.build(),
        left.build(),
      ].join(' ');
    } else {
      return _mapperTypeSizeCSS(type);
    }
  }

  String _mapperTypeSizeCSS(_TypeSizeCSS value) {
    switch (value) {
      case _TypeSizeCSS.auto:
        return 'auto';
      case _TypeSizeCSS.inherit:
        return 'inherit';
      case _TypeSizeCSS.zero:
        return '0';
      default:
        throw Exception('Invalid value TypeSizeCSS');
    }
  }

  const EdgeInsetsCSS._withType(_TypeSizeCSS type) : super(type: type);

  static const auto = EdgeInsetsCSS._withType(_TypeSizeCSS.auto);

  static const inherit = EdgeInsetsCSS._withType(_TypeSizeCSS.inherit);

  static const zero = EdgeInsetsCSS._withType(_TypeSizeCSS.zero);

  EdgeInsetsCSS add(EdgeInsetsCSS other) => EdgeInsetsCSS.only(
    left: left + other.left,
    top: top + other.top,
    right: right + other.right,
    bottom: bottom + other.bottom,
  );

  EdgeInsetsCSS subtract(EdgeInsetsCSS other) => EdgeInsetsCSS.only(
    left: left - other.left,
    top: top - other.top,
    right: right - other.right,
    bottom: bottom - other.bottom,
  );
}
