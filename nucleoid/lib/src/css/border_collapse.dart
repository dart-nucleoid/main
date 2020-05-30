enum BorderCollapseCSS { collapse, separate }

String mapperBorderCollapseCSS(BorderCollapseCSS value) {
  switch (value) {
    case BorderCollapseCSS.collapse:
      return 'collapse';
    case BorderCollapseCSS.separate:
      return 'separate';
    default:
      throw Exception('Invalid value BorderCollapseCSS');
  }
}
