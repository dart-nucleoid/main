import 'dart:async';

import 'package:nucleoid/nucleoid.dart';

import 'page/home_page.dart';
import 'page/not_found_page.dart';
import 'style/style.dart';

class ServerTemplateRouter extends Router {
  @override
  Future<Response> build(Request request) async {
    var route = Route.formRequest(request);

    if (route == Routes.home) {
      return HomePage(request).build();
    } else if (route == Routes.style) {
      return Style(request).build();
    } else if (route == Routes.script) {
      return JavascriptData.path('lib/script/main.dart', request: request).build();
    } else if (route == Routes.favicon) {
      return FileData.path('assets/icons/favicon.ico', request: request).build();
    } else if (route.name.startsWith(Routes.imagesPath.name)) {
      return FileData.path('assets${route.url}', request: request).build();
    } else {
      return NotFoundPage(request).build();
    }
  }
}

abstract class Routes {
  static const home = Route('');
  static const style = Route('style.css');
  static const favicon = Route('favicon.ico');
  static const script = Route('main.js');
  static const imagesPath = Route('images/');
}
