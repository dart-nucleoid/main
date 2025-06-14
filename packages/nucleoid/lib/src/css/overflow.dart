enum OverflowCSS { auto, hidden, scroll, visible }

String mapperOverflowCSS(OverflowCSS value) {
  switch (value) {
    case OverflowCSS.auto:
      return 'auto';
    case OverflowCSS.hidden:
      return 'hidden';
    case OverflowCSS.scroll:
      return 'scroll';
    case OverflowCSS.visible:
      return 'visible';
  }
}
