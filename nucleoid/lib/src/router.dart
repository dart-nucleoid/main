import 'package:loggable/loggable.dart';
import 'package:shelf/shelf.dart';

abstract class Router with Loggable {
  Future<Response> build(Request request);
}

class Route {
  final String name;

  const Route(this.name);

  factory Route.formRequest(Request request) => Route(request.url.path.toLowerCase());

  String get url => '/$name';

  @override
  bool operator ==(other) => identical(this, other) || (other is Route && name == other.name);
}