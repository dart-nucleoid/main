import 'package:loggable/loggable.dart';
import 'package:shelf/shelf.dart';

abstract class Router with Loggable {
  Future<Response> builder(Request request);
}