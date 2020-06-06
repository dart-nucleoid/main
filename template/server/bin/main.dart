import 'package:server_template/router.dart';
import 'package:nucleoid/nucleoid.dart';

void main(List<String> args) async {
  logger();

  var server = Server(router: ServerTemplateRouter());

  await server.start(args);
}
