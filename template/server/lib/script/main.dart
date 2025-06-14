import 'package:web/web.dart';

void main() {
  final contentElements = document.querySelector('#content')!;

  contentElements.append(HTMLHeadingElement.h2()..textContent = 'dart2js');
  contentElements.append(
    HTMLParagraphElement()..textContent = 'Code: lib/script/main.dart',
  );
  contentElements.append(
    HTMLParagraphElement()
      ..appendChild(
        HTMLParagraphElement()..textContent = 'code: DateTime.now();',
      )
      ..appendChild(
        HTMLParagraphElement()..textContent = 'result: ${DateTime.now()}',
      ),
  );
}
