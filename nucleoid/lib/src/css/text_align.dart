enum TextAlignCSS { center, justify, left, right, start, end }

String mapperTextAlignCSS(TextAlignCSS value) {
  switch (value) {
    case TextAlignCSS.center:
      return 'center';
    case TextAlignCSS.justify:
      return 'justify';
    case TextAlignCSS.left:
      return 'left';
    case TextAlignCSS.right:
      return 'right';
    case TextAlignCSS.start:
      return 'start';
    case TextAlignCSS.end:
      return 'end';
    default:
      throw Exception('Invalid value TextAlignCSS');
  }
}
