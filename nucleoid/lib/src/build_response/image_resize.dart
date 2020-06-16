import 'dart:async';
import 'dart:io';

import 'package:image/image.dart';

import '../../nucleoid.dart';

enum ImageResizeType { jpg, png, gif }

class ImageResize extends FileData {
  final File originFile;
  final ImageResizeType type;
  final int width;
  final int height;
  final Interpolation interpolation;

  ImageResize(
      {@required File this.originFile,
      @required request,
      ImageResizeType type,
      this.width,
      this.height,
      this.interpolation,
      Map<String, String> headers,
      int maxAge})
      : assert(width != null || height != null),
        type = type ?? _imageResizeTypeFile(originFile),
        super(
            file: File([
              _cacheDirPath,
              '${[
                originFile.path.replaceAll('/', '_'),
                if (width != null) 'w=$width',
                if (height != null) 'h=$height',
                if (interpolation != null) 'i=$interpolation'
              ].join('_')}.${_imageResizeTypeExtension(type ?? _imageResizeTypeFile(originFile))}'
            ].join(Platform.pathSeparator)),
            request: request,
            headers: headers);

  factory ImageResize.path(String path,
          {@required Request request,
          int width,
          int height,
          ImageResizeType type,
          Map<String, String> headers,
          int maxAge}) =>
      ImageResize(
          originFile: File(path),
          request: request,
          width: width,
          height: height,
          type: type,
          headers: headers,
          maxAge: maxAge);

  static String get _cacheDirPath => '$nucleoid${Platform.pathSeparator}cache';

  @override
  Future<Response> builder() async {
    if (!await file.exists()) {
      var cacheDir = Directory(_cacheDirPath);

      if (!await cacheDir.exists()) {
        await cacheDir.createSync(recursive: true);
      }

      Image image = decodeImage(await originFile.readAsBytes());

      Image thumbnail = copyResize(image, width: width, height: height, interpolation: interpolation);

      await file.writeAsBytes(_encodeImage(thumbnail));
    }

    return super.builder();
  }

  List<int> _encodeImage(Image image) {
    switch (type) {
      case ImageResizeType.jpg:
        return encodeJpg(image);
      case ImageResizeType.png:
        return encodePng(image);
      case ImageResizeType.gif:
        return encodeGif(image);
      default:
        throw Exception('Invalid value ImageResizeType');
    }
  }

  static ImageResizeType _imageResizeTypeFile(File file) {
    var extension = file.path.split('.')?.last?.toLowerCase();

    switch (extension) {
      case 'jpg':
        return ImageResizeType.jpg;
      case 'png':
        return ImageResizeType.png;
      case 'gif':
        return ImageResizeType.gif;
      default:
        throw Exception('Invalid file extension');
    }
  }

  static String _imageResizeTypeExtension(ImageResizeType type) {
    switch (type) {
      case ImageResizeType.jpg:
        return 'jpg';
      case ImageResizeType.png:
        return 'png';
      case ImageResizeType.gif:
        return 'gif';
      default:
        throw Exception('Invalid value ImageResizeType');
    }
  }
}
