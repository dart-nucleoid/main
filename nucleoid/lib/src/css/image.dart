import 'size.dart';

class ImagePositionCSS {
  final _TypePositionImageCSS type;
  final SizeCSS left;
  final SizeCSS top;

  const ImagePositionCSS(this.left, this.top, [this.type = _TypePositionImageCSS.value]);

  String get text {
    if (type == _TypePositionImageCSS.value) {
      return '${left.text} ${top.text}';
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

  static const topLeft = ImagePositionCSS(null, null, _TypePositionImageCSS.topLeft);
  static const topCenter = ImagePositionCSS(null, null, _TypePositionImageCSS.topCenter);
  static const topRight = ImagePositionCSS(null, null, _TypePositionImageCSS.topRight);
  static const centerLeft = ImagePositionCSS(null, null, _TypePositionImageCSS.centerLeft);
  static const center = ImagePositionCSS(null, null, _TypePositionImageCSS.center);
  static const centerRight = ImagePositionCSS(null, null, _TypePositionImageCSS.centerRight);
  static const bottomLeft = ImagePositionCSS(null, null, _TypePositionImageCSS.bottomLeft);
  static const bottomCenter = ImagePositionCSS(null, null, _TypePositionImageCSS.bottomCenter);
  static const bottomRight = ImagePositionCSS(null, null, _TypePositionImageCSS.bottomRight);
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
  bottomRight
}

class ImageRepeatCSS {
  final TypeRepeatCSS typeRepeatX;
  final TypeRepeatCSS typeRepeatY;

  const ImageRepeatCSS(this.typeRepeatX, this.typeRepeatY);

  String get text {
    if (typeRepeatX == typeRepeatY) {
      return '${mapperRepeatImageCSS(typeRepeatX)}';
    } else if (typeRepeatX == TypeRepeatCSS.repeat && typeRepeatY == TypeRepeatCSS.noRepeat) {
      return 'repeat-x';
    } else if (typeRepeatX == TypeRepeatCSS.noRepeat && typeRepeatY == TypeRepeatCSS.repeat) {
      return 'repeat-y';
    } else {
      return '${mapperRepeatImageCSS(typeRepeatX)} ${mapperRepeatImageCSS(typeRepeatY)}';
    }
  }

  static const noRepeat = ImageRepeatCSS(TypeRepeatCSS.noRepeat, TypeRepeatCSS.noRepeat);
  static const repeat = ImageRepeatCSS(TypeRepeatCSS.repeat, TypeRepeatCSS.repeat);
  static const repeatX = ImageRepeatCSS(TypeRepeatCSS.repeat, TypeRepeatCSS.noRepeat);
  static const repeatY = ImageRepeatCSS(TypeRepeatCSS.noRepeat, TypeRepeatCSS.repeat);
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
    default:
      throw Exception('Invalid value TypeRepeatCSS');
  }
}

class ImageSizeCSS {
  final SizeCSS width;
  final SizeCSS height;
  final _TypeSizeImageCSS type;

  const ImageSizeCSS(this.width, this.height, [this.type = _TypeSizeImageCSS.value]);

  String get text {
    if (type == _TypeSizeImageCSS.value) {
      return '${width.text} ${height.text}';
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

  static const auto = ImageSizeCSS(null, null, _TypeSizeImageCSS.auto);

  static const cover = ImageSizeCSS(null, null, _TypeSizeImageCSS.cover);

  static const contain = ImageSizeCSS(null, null, _TypeSizeImageCSS.contain);
}

enum _TypeSizeImageCSS { value, auto, cover, contain }
