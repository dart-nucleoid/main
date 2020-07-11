import 'color.dart';
import 'image.dart';

class BackgroundCSS {
  final BackgroundAttachmentCSS attachment;
  final ColorCSS color;
  final String image;
  final ImagePositionCSS position;
  final ImageRepeatCSS repeat;

  BackgroundCSS({this.attachment, this.color, this.image, this.position, this.repeat});

  String build() => [
        if (attachment != null) mapperAttachmentBackgroundCSS(attachment),
        if (color != null) color.build(),
        if (image != null) 'url($image)',
        if (position != null) position.build(),
        if (repeat != null) repeat.build(),
      ].join(' ');
}

class BackgroundCSSList extends BackgroundCSS {
  final List<BackgroundCSS> list;

  BackgroundCSSList(this.list);

  @override
  String build() => list.map((e) => e.build()).join(',');
}

abstract class ColorsCSS {
  static const ColorCSS white = ColorCSS(0xffffffff);
  static const ColorCSS black = ColorCSS(0xff000000);
  static const ColorCSS red = ColorCSS(0xffff0000);
  static const ColorCSS green = ColorCSS(0xff00ff00);
  static const ColorCSS blue = ColorCSS(0xff0000ff);
}

enum BackgroundAttachmentCSS { fixed, scroll, local }

String mapperAttachmentBackgroundCSS(BackgroundAttachmentCSS value) {
  switch (value) {
    case BackgroundAttachmentCSS.fixed:
      return 'fixed';
    case BackgroundAttachmentCSS.scroll:
      return 'scroll';
    case BackgroundAttachmentCSS.local:
      return 'local';
    default:
      throw Exception('Invalid value AttachmentBackgroundCSS');
  }
}
