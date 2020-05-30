enum FontWeightCSS { bold, bolder, lighter, normal, w100, w200, w300, w400, w500, w600, w700, w800, w900 }

String mapperFontWeightCSS(FontWeightCSS value) {
  switch (value) {
    case FontWeightCSS.bold:
      return 'bold';
    case FontWeightCSS.bolder:
      return 'bolder';
    case FontWeightCSS.lighter:
      return 'lighter';
    case FontWeightCSS.normal:
      return 'normal';
    case FontWeightCSS.w100:
      return '100';
    case FontWeightCSS.w200:
      return '200';
    case FontWeightCSS.w300:
      return '300';
    case FontWeightCSS.w400:
      return '400';
    case FontWeightCSS.w500:
      return '500';
    case FontWeightCSS.w600:
      return '600';
    case FontWeightCSS.w700:
      return '700';
    case FontWeightCSS.w800:
      return '800';
    case FontWeightCSS.w900:
      return '900';
    default:
      throw Exception('Invalid value FontWeightCSS');
  }
}
