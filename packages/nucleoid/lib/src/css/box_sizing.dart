enum BoxSizingCSS { contentBox, borderBox, paddingBox }

String mapperBoxSizingCSS(BoxSizingCSS value) {
  switch (value) {
    case BoxSizingCSS.contentBox:
      return 'content-box';
    case BoxSizingCSS.borderBox:
      return 'border-box';
    case BoxSizingCSS.paddingBox:
      return 'padding-box';
  }
}
