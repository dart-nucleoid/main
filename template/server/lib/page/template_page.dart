import 'package:nucleoid/extension.dart';
import 'package:nucleoid/html.dart';
import 'package:nucleoid/nucleoid.dart';

import '../router.dart';

abstract class TemplatePage extends BuildResponse {
  final String? _title;

  TemplatePage(Request request, {String? title})
    : _title = title,
      super(request: request);

  final List<NodeElement> _headerLinks = [
    Link(href: Routes.style.url, rel: 'stylesheet'),
    Link(href: Routes.favicon.url, rel: 'shortcut icon'),
    Meta(charset: 'utf-8'),
    Meta(
      name: 'viewport',
      content: 'width=device-width, initial-scale=1,user-scalable=0',
    ),
    Link(
      href: 'https://fonts.googleapis.com/css?family=PT+Sans',
      rel: 'stylesheet',
    ),
    Script(src: Routes.script.url, defer: true),
  ];

  List<NodeElement>? content();

  String? get title => _title;

  int get statusCode => 200;

  @override
  Future<Response> buildResponse() async {
    return Response(
      statusCode,
      headers: {
        'content-type': MimeTypes.html,
        'cache-control': 'no-store, no-cache, must-revalidate',
      },
      body: Html(
        lang: 'en',
        children: [
          Head(
            children: [
              if (title != null) Title(child: title!.text),
              ..._headerLinks,
            ],
          ),
          Body(
            children: <NodeElement>[
              Div(
                id: 'content',
                children: [
                  Div(
                    children: [
                      A(
                        child: Img(
                          src: '${Routes.imagesPath.url}vkontakte.svg',
                        ),
                        href: 'https://vk.com/flutter.tutorial',
                        target: TargetA.blank,
                      ),
                      A(
                        child: Img(src: '${Routes.imagesPath.url}youtube.svg'),
                        href: 'https://www.youtube.com/c/TutorialFlutter',
                        target: TargetA.blank,
                      ),
                    ],
                  ),
                  if (title != null && title!.isNotEmpty)
                    H1(child: Text(title!)),
                  ...?content(),
                ],
              ),
            ],
          ),
        ],
      ).build(),
    );
  }
}
