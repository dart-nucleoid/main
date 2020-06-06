import 'dart:html';

void main () {
  var contentElements = querySelector('#content');

  contentElements.appendHtml('<h2>dart2js</h2>');
  contentElements.appendHtml('<p>Code: lib/script/main.dart</p>');
  contentElements.appendHtml('<code>DateTime.now();</code>\nresult: ${DateTime.now()}');
}