import 'dart:async';
import 'dart:io';

import 'package:path/path.dart' as path;

import '../../nucleoid.dart';

class JavascriptData extends BuildResponse {
  final File file;

  JavascriptData({required this.file, required request})
    : super(request: request);

  factory JavascriptData.path(String path, {required Request request}) =>
      JavascriptData(file: File(path), request: request);

  @override
  Future<Response> buildResponse() async {
    var fileCache = _outputCache(file);

    assert(await () async {
      if (!await fileCache.exists() ||
          (await fileCache.lastModified()).isAfter(dateTimeStart)) {
        await dart2js(file);
      }
      return true;
    }());

    return FileData(file: fileCache, request: request).buildResponse();
  }

  static File _outputCache(File file) => File(
    [
      nucleoid,
      'scripts',
      '${path.basename(file.path)}.js',
    ].join(Platform.pathSeparator),
  );

  static Future<void> dart2js(File file, [String? pathPrefix]) async {
    var rootPath = [
      if (pathPrefix != null) pathPrefix,
      path.dirname(_outputCache(file).path),
    ].join(Platform.pathSeparator);
    var outputFilePath = [
      if (pathPrefix != null) pathPrefix,
      _outputCache(file).path,
    ].join(Platform.pathSeparator);

    print('dart2js: ${file.path} -> $outputFilePath');

    final outputDir = Directory(rootPath);

    if (!await outputDir.exists()) await outputDir.create(recursive: true);

    var result2js = await Process.run('dart compile js', [
      '-O2',
      '-o',
      outputFilePath,
      file.path,
    ], runInShell: true);

    if (result2js.stdout.toString().isNotEmpty)
      print('dart2js result: ${result2js.stdout}');
    if (result2js.stderr.toString().isNotEmpty)
      print('Error dart2js: ${result2js.stderr.toString()}');
  }
}
