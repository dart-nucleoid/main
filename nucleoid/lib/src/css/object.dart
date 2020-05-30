enum ObjectFitCSS { fill, contain, cover, scaleDown, none }

String mapperObjectFitCSS(ObjectFitCSS value) {
  switch (value) {
    case ObjectFitCSS.fill:
      return 'fill';
    case ObjectFitCSS.contain:
      return 'contain';
    case ObjectFitCSS.cover:
      return 'cover';
    case ObjectFitCSS.scaleDown:
      return 'scale-down';
    case ObjectFitCSS.none:
      return 'none';
    default:
      throw Exception('Invalid value ObjectFitCSS');
  }
}
