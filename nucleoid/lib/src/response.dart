import 'dart:async';

import 'package:shelf/shelf.dart';

abstract class BuildResponse {
  final Request request;

  const BuildResponse({this.request});

  FutureOr<Response> builder();
}