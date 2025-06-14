enum FloatCSS { left, right, none }

String mapperFloatCSS(FloatCSS value) {
  switch (value) {
    case FloatCSS.left:
      return 'left';
    case FloatCSS.right:
      return 'right';
    case FloatCSS.none:
      return 'none';
  }
}
