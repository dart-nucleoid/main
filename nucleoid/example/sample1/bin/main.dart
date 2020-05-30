import 'package:nucleoid/html.dart';
import 'package:nucleoid/nucleoid.dart';

void main(List<String> args) async {
  logger();
  await Server(router: MyRouter()).start(args);
}

class MyRouter extends Router {
  @override
  Future<Response> builder(Request request) async {
    return Response.ok(
      Document(
        child: Html(
          lang: 'en',
          children: [
            Head(child: Meta(charset: 'utf-8')),
            Body(child: H1(child: Text('url: ${request.url.path}'))),
          ],
        ),
      ).html,
      headers: {'Content-Type': MimeTypes.html},
    );
  }
}
