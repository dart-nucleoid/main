# nucleoid
A library for Dart developers. Create dart web server.

## Usage

A simple usage example:

### Sample 1

Create sample dart project with **Stagehand**: <https://pub.dev/packages/stagehand>

**Step 1: create sample project**
```
$ mkdir sample1
$ cd sample1
$ stagehand console-simple
```
**Step 2: add dependencies in pubspec.yaml**
```yaml
dependencies:
  nucleoid: ^0.1.1
```
Get dependencies:
```
$ pub get
```

**Step 3: Replace code in bin/main.dart**
```dart
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
```
**Step 4: run main.dart**
```
$ dart bin/main.dart
```
Open: http://localhost:8080/hello_world

Result:
```html
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
</head>
<body>
<h1>url: hello_world</h1>
</body>
</html>
```

### Sample 2

```dart
import 'package:nucleoid/nucleoid.dart';

void main(List<String> args) async {
  logger();

  var server = Server(router: MyRouter());

  await server.start(args);
}

class MyRouter extends Router {
  @override
  Future<Response> builder(Request request) {
    var urlPath = request.url.path.toLowerCase();

    log.fine('urlPath: $urlPath');

    BuildResponse buildResponse;

    switch (urlPath) {
      case 'favicon.ico': return FileData.path('assets/favicon.ico', request: request).builder();
      case '':
      case '/': return _responseOk('Main page');
      default: return _responseNotFound();
    }
  }

  Response _responseOk(String title) {
    return Response.ok(
        Html(
          lang: 'en',
          children: [
            Head(children: [Meta(charset: 'utf-8'), Title(title)]),
            Body(child: H1('Hello world')),
          ],
        ).html,
        headers: {'Content-Type': MimeTypes.html});
  }

  Response _responseNotFound() {
      return Response.notFound(
        Html(
          lang: 'en',
          children: [
            Head(children: [Meta(charset: 'utf-8'), Title('Page not found')]),
            Body(child: H1('Page not found')),
          ],
        ).html,
        headers: {'Content-Type': MimeTypes.html});
  }
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/dart-nucleoid/main/issues


## License
BSD License [license](https://github.com/dart-nucleoid/main/blob/master/LICENSE).