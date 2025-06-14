import 'size.dart';

class ImagePositionCSS {
  final _TypePositionImageCSS type;
  final SizeCSS left;
  final SizeCSS top;

  const ImagePositionCSS(this.left, this.top)
    : type = _TypePositionImageCSS.value;

  const ImagePositionCSS._type(this.type)
    : left = SizeCSS.zero,
      top = SizeCSS.zero;

  String build() {
    if (type == _TypePositionImageCSS.value) {
      return '${left.build()} ${top.build()}';
    } else {
      return _mapperTypePositionImageCSS(type);
    }
  }

  String _mapperTypePositionImageCSS(_TypePositionImageCSS value) {
    switch (value) {
      case _TypePositionImageCSS.topLeft:
        return 'top left';
      case _TypePositionImageCSS.topCenter:
        return 'top center';
      case _TypePositionImageCSS.topRight:
        return 'top right';
      case _TypePositionImageCSS.centerLeft:
        return 'center left';
      case _TypePositionImageCSS.center:
        return 'center';
      case _TypePositionImageCSS.centerRight:
        return 'center right';
      case _TypePositionImageCSS.bottomLeft:
        return 'bottom left';
      case _TypePositionImageCSS.bottomCenter:
        return 'bottom center';
      case _TypePositionImageCSS.bottomRight:
        return 'bottom right';
      default:
        throw Exception('Invalid value TypePositionImageCSS');
    }
  }

  static const topLeft = ImagePositionCSS._type(_TypePositionImageCSS.topLeft);
  static const topCenter = ImagePositionCSS._type(
    _TypePositionImageCSS.topCenter,
  );
  static const topRight = ImagePositionCSS._type(
    _TypePositionImageCSS.topRight,
  );
  static const centerLeft = ImagePositionCSS._type(
    _TypePositionImageCSS.centerLeft,
  );
  static const center = ImagePositionCSS._type(_TypePositionImageCSS.center);
  static const centerRight = ImagePositionCSS._type(
    _TypePositionImageCSS.centerRight,
  );
  static const bottomLeft = ImagePositionCSS._type(
    _TypePositionImageCSS.bottomLeft,
  );
  static const bottomCenter = ImagePositionCSS._type(
    _TypePositionImageCSS.bottomCenter,
  );
  static const bottomRight = ImagePositionCSS._type(
    _TypePositionImageCSS.bottomRight,
  );
}

enum _TypePositionImageCSS {
  value,
  topLeft,
  topCenter,
  topRight,
  centerLeft,
  center,
  centerRight,
  bottomLeft,
  bottomCenter,
  bottomRight,
}

class ImageRepeatCSS {
  final TypeRepeatCSS typeRepeatX;
  final TypeRepeatCSS typeRepeatY;

  const ImageRepeatCSS(this.typeRepeatX, this.typeRepeatY);

  String build() {
    if (typeRepeatX == typeRepeatY) {
      return '${mapperRepeatImageCSS(typeRepeatX)}';
    } else if (typeRepeatX == TypeRepeatCSS.repeat &&
        typeRepeatY == TypeRepeatCSS.noRepeat) {
      return 'repeat-x';
    } else if (typeRepeatX == TypeRepeatCSS.noRepeat &&
        typeRepeatY == TypeRepeatCSS.repeat) {
      return 'repeat-y';
    } else {
      return '${mapperRepeatImageCSS(typeRepeatX)} ${mapperRepeatImageCSS(typeRepeatY)}';
    }
  }

  static const noRepeat = ImageRepeatCSS(
    TypeRepeatCSS.noRepeat,
    TypeRepeatCSS.noRepeat,
  );
  static const repeat = ImageRepeatCSS(
    TypeRepeatCSS.repeat,
    TypeRepeatCSS.repeat,
  );
  static const repeatX = ImageRepeatCSS(
    TypeRepeatCSS.repeat,
    TypeRepeatCSS.noRepeat,
  );
  static const repeatY = ImageRepeatCSS(
    TypeRepeatCSS.noRepeat,
    TypeRepeatCSS.repeat,
  );
  static const space = ImageRepeatCSS(TypeRepeatCSS.space, TypeRepeatCSS.space);
  static const round = ImageRepeatCSS(TypeRepeatCSS.round, TypeRepeatCSS.round);
}

enum TypeRepeatCSS { noRepeat, repeat, space, round }

String mapperRepeatImageCSS(TypeRepeatCSS value) {
  switch (value) {
    case TypeRepeatCSS.noRepeat:
      return 'no-repeat';
    case TypeRepeatCSS.repeat:
      return 'repeat';
    case TypeRepeatCSS.space:
      return 'space';
    case TypeRepeatCSS.round:
      return 'round';
  }
}

class ImageSizeCSS {
  final SizeCSS width;
  final SizeCSS height;
  final _TypeSizeImageCSS type;

  const ImageSizeCSS(this.width, this.height) : type = _TypeSizeImageCSS.value;

  const ImageSizeCSS._type(this.type)
    : width = SizeCSS.zero,
      height = SizeCSS.zero;

  String build() {
    if (type == _TypeSizeImageCSS.value) {
      return '${width.build()} ${height.build()}';
    } else {
      return _mapperTypeSizeImageCSS(type);
    }
  }

  String _mapperTypeSizeImageCSS(_TypeSizeImageCSS value) {
    switch (value) {
      case _TypeSizeImageCSS.auto:
        return 'auto';
      case _TypeSizeImageCSS.cover:
        return 'cover';
      case _TypeSizeImageCSS.contain:
        return 'contain';
      default:
        throw Exception('Invalid value TypeSizeImageCSS');
    }
  }

  static const auto = ImageSizeCSS._type(_TypeSizeImageCSS.auto);

  static const cover = ImageSizeCSS._type(_TypeSizeImageCSS.cover);

  static const contain = ImageSizeCSS._type(_TypeSizeImageCSS.contain);
}

enum _TypeSizeImageCSS { value, auto, cover, contain }
