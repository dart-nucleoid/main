import 'dart:async';
import 'dart:io';

import '../../nucleoid.dart';

class FileData extends BuildResponse {
  final File file;
  final Map<String, String>? headers;
  final int? maxAge;
  final String? mime;

  FileData({
    required this.file,
    required request,
    this.mime,
    this.headers,
    this.maxAge,
  }) : super(request: request);

  factory FileData.path(
    String path, {
    required Request request,
    String? mime,
    Map<String, String>? headers,
    int? maxAge,
  }) => FileData(
    file: File(path),
    request: request,
    mime: mime,
    headers: headers,
    maxAge: maxAge,
  );

  @override
  Future<Response> buildResponse() async {
    final _extension = file.path.split('.').last.toLowerCase();

    if (await file.exists()) {
      if (request.headers.containsKey('If-Modified-Since') &&
          request.headers['If-Modified-Since'] ==
              formatHttpDate(await file.lastModified())) {
        return Response.notModified(headers: headers);
      }

      try {
        var mime =
            this.mime ??
            mapFileExtensions[_extension] ??
            'application/octet-stream';

        return Response.ok(
          file.openRead(),
          headers: {
            'Content-Type': mime,
            'Last-Modified': formatHttpDate(await file.lastModified()),
            //            'Cache-Control': 'max-age=${maxAge ?? 86400}, public',
            ...?headers,
          },
        );
      } catch (e) {
        return Response.internalServerError(
          body: 'Server error: $e',
          headers: {'Content-Type': MimeTypes.html, ...?headers},
        );
      }
    }
    return Response.notFound(
      'File not found: ${request.url}',
      headers: {'Content-Type': MimeTypes.html, ...?headers},
    );
  }
}

const Map<String, String> mapFileExtensions = {
  FileExtensions.gif: MimeTypes.gif,
  FileExtensions.html: MimeTypes.html,
  FileExtensions.ico: MimeTypes.ico,
  FileExtensions.jpg: MimeTypes.jpg,
  FileExtensions.js: MimeTypes.js,
  FileExtensions.json: MimeTypes.json,
  FileExtensions.pdf: MimeTypes.pdf,
  FileExtensions.png: MimeTypes.png,
  FileExtensions.svg: MimeTypes.svg,
  FileExtensions.txt: MimeTypes.txt,
};

abstract class FileExtensions {
  static const String gif = 'gif';
  static const String html = 'html';
  static const String ico = 'ico';
  static const String jpg = 'jpg';
  static const String js = 'js';
  static const String json = 'json';
  static const String pdf = 'pdf';
  static const String png = 'png';
  static const String svg = 'svg';
  static const String txt = 'txt';
}

abstract class MimeTypes {
  static const String gif = 'image/gif';
  static const String html = 'text/html';
  static const String ico = 'image/x-icon';
  static const String jpg = 'image/jpeg';
  static const String js = 'application/javascript';
  static const String json = 'application/json';
  static const String pdf = 'application/pdf';
  static const String png = 'image/png';
  static const String svg = 'image/svg+xml';
  static const String txt = 'text/plain';
}
