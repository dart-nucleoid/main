class ContentCSS {
  final String text;

  ContentCSS(this.text);

  ContentCSS.text(String text) : text = '\'$text\'';

  ContentCSS.attr(String text) : text = 'attr($text)';

  factory ContentCSS.openQuote() => ContentCSS('open-quote');

  factory ContentCSS.closeQuote() => ContentCSS('close-quote');

  factory ContentCSS.noOpenQuote() => ContentCSS('no-open-quote');

  factory ContentCSS.noCloseQuote() => ContentCSS('no-close-quote');

  ContentCSS.url(String text) : text = 'url($text)';

  factory ContentCSS.counter() => ContentCSS('counter');

  factory ContentCSS.normal() => ContentCSS('normal');

  factory ContentCSS.none() => ContentCSS('none');
}
