import 'package:nucleoid/html.dart';

extension SizeCSSExtension on num {
  SizeCSS get px => SizeCSS.px(this);

  SizeCSS get em => SizeCSS.em(this);

  SizeCSS get rem => SizeCSS.rem(this);

  SizeCSS get pc => SizeCSS.percent(this);

  SizeCSS get vw => SizeCSS.vw(this);

  SizeCSS get vh => SizeCSS.vh(this);

  SizeCSS get vMin => SizeCSS.vMin(this);

  SizeCSS get vMax => SizeCSS.vMax(this);

  SizeCSS get num => SizeCSS.num(this);

  AngleCSS get deg => AngleCSS.deg(this);

  AngleCSS get rad => AngleCSS.rad(this);

  DurationCSS get sec => DurationCSS(seconds: toInt());

  DurationCSS get msec => DurationCSS(milliseconds: toInt());
}

extension ElementExtension on String {
  Text get text => Text(this);

  StyleCSS get style => StyleCSS.fromText(this);

  StyleClass get className => StyleClass(name: this);

  List<StyleClass> get classList => <StyleClass>[StyleClass(name: this)];

  Strong get strong => Strong(child: Text(this));

  B get b => B(child: Text(this));

  Em get em => Em(child: Text(this));

  I get i => I(child: Text(this));

  Big get big => Big(child: Text(this));

  Small get small => Small(child: Text(this));
}
