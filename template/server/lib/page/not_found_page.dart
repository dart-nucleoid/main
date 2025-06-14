import 'package:nucleoid/html.dart';
import 'package:nucleoid/nucleoid.dart';

import '../router.dart';
import '../style/style.dart';
import 'template_page.dart';

class NotFoundPage extends TemplatePage {
  NotFoundPage(Request request) : super(request);

  @override
  int get statusCode => 404;

  @override
  String get title => 'Not Found';

  @override
  List<NodeElement> content() {
    return [
      A(
        href: Routes.home.url,
        classList: [centerStyle, underlineStyle],
        child: Text('Go home page'),
      ),
    ];
  }
}
