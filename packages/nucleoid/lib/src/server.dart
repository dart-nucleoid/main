import 'dart:io';

import 'package:args/args.dart';
import 'package:loggable/loggable.dart';
import 'package:shelf/shelf.dart' show Pipeline, logRequests;
import 'package:shelf/shelf_io.dart' as io;

import '../nucleoid.dart';
import 'router.dart';

class Server with Loggable {
  final address;
  final Router router;
  final int? port;

  Server({this.address = 'localhost', this.port, required this.router});

  Future<void> start(List<String> args) async {
    var parser = ArgParser()..addOption('port', abbr: 'p');
    var result = parser.parse(args);

    var portStr =
        result['port'] ?? this.port ?? Platform.environment['PORT'] ?? 8080;
    var port = portStr.runtimeType == String ? int.tryParse(portStr) : portStr;

    if (port == null) {
      stdout.writeln('Could not parse port value "$portStr" into a number.');
      // 64: command line usage error
      exitCode = 64;
      return;
    }

    var handler = const Pipeline()
        .addMiddleware(logRequests())
        .addHandler(router.build);

    var server = await io.serve(handler, address, port);
    log.fine('Start at http://${server.address.host}:${server.port}');
  }
}
