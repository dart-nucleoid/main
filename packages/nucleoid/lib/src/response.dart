import 'dart:async';

import 'package:shelf/shelf.dart';

abstract class BuildResponse {
  final Request request;

  const BuildResponse({required this.request});

  FutureOr<Response> buildResponse();
}
