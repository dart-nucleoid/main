enum WhiteSpaceCSS { normal, nowrap, pre, preLine, preWrap }

String mapperWhiteSpaceCSS(WhiteSpaceCSS value) {
  switch (value) {
    case WhiteSpaceCSS.normal:
      return 'normal';
    case WhiteSpaceCSS.nowrap:
      return 'nowrap';
    case WhiteSpaceCSS.pre:
      return 'pre';
    case WhiteSpaceCSS.preLine:
      return 'pre-line';
    case WhiteSpaceCSS.preWrap:
      return 'pre-wrap';
  }
}
