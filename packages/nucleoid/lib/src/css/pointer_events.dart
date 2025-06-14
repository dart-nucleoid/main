enum PointerEventsCSS { auto, none }

String mapperPointerEventsCSS(PointerEventsCSS value) {
  switch (value) {
    case PointerEventsCSS.auto:
      return 'auto';
    case PointerEventsCSS.none:
      return 'none';
  }
}
