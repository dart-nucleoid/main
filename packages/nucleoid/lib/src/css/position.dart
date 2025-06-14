enum PositionCSS { absolute, fixed, relative, static }

String mapperPositionCSS(PositionCSS value) {
  switch (value) {
    case PositionCSS.absolute:
      return 'absolute';
    case PositionCSS.fixed:
      return 'fixed';
    case PositionCSS.relative:
      return 'relative';
    case PositionCSS.static:
      return 'static';
  }
}
