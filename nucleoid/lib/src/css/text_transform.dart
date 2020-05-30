enum TextTransformCSS { capitalize, lowercase, uppercase, none }

String mapperTextTransformCSS(TextTransformCSS value) {
  switch (value) {
    case TextTransformCSS.capitalize:
      return 'capitalize';
    case TextTransformCSS.lowercase:
      return 'lowercase';
    case TextTransformCSS.uppercase:
      return 'uppercase';
    case TextTransformCSS.none:
      return 'none';
    default:
      throw Exception('Invalid value TextTransformCSS');
  }
}
