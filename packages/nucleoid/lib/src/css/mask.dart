import 'image.dart';

class MaskCSS {
  final String? image;
  final ImagePositionCSS? position;
  final ImageRepeatCSS? repeat;

  MaskCSS({this.image, this.position, this.repeat});

  String build() => [
    if (image != null) 'url($image)',
    if (position != null) position!.build(),
    if (repeat != null) repeat!.build(),
  ].join(' ');
}
