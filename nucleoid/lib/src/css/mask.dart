import 'image.dart';

class MaskCSS {
  final String image;
  final ImagePositionCSS position;
  final ImageRepeatCSS repeat;

  MaskCSS({this.image, this.position, this.repeat});

  String get text => [
        if (image != null) 'url($image)',
        if (position != null) position.text,
        if (repeat != null) repeat.text,
      ].join(' ');
}
