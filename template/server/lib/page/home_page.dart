import 'package:nucleoid/extension.dart';
import 'package:nucleoid/html.dart';
import 'package:nucleoid/nucleoid.dart';

import 'template_page.dart';

class HomePage extends TemplatePage {
  HomePage(Request request) : super(request);

  @override
  String get title => 'Nucleoid template server home page';

  @override
  List<NodeElement> content() {
    return [
      P(child: 'Hello world'.text),
      Code(child: r"P(child: 'Hello world'.text),".text),
      P(child: 'Test <a href="/404"><strong>NotFoundPage</strong></a>'.text),
    ];
  }
}
