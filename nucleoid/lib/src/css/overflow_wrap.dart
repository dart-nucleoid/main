enum OverflowWrapCSS { normal, breakWord, anywhere }

String mapperOverflowWrapCSS(OverflowWrapCSS value) {
  switch (value) {
    case OverflowWrapCSS.normal:
      return 'normal';
    case OverflowWrapCSS.breakWord:
      return 'break-word';
    case OverflowWrapCSS.anywhere:
      return 'anywhere';
    default:
      throw Exception('Invalid value OverflowWrapCSS');
  }
}
