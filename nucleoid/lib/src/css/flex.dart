import '../../html.dart';

enum FlexDirectionCSS { column, columnReverse, row, rowReverse }

String mapperFlexDirectionCSS(FlexDirectionCSS value) {
  switch (value) {
    case FlexDirectionCSS.column:
      return 'column';
    case FlexDirectionCSS.columnReverse:
      return 'column-reverse';
    case FlexDirectionCSS.row:
      return 'row';
    case FlexDirectionCSS.rowReverse:
      return 'row-reverse';
    default:
      throw Exception('Invalid value FlexDirectionCSS');
  }
}

enum AlignItemsCSS { flexStart, flexEnd, center, baseline, stretch }

String mapperAlignItemsCSS(AlignItemsCSS value) {
  switch (value) {
    case AlignItemsCSS.flexStart:
      return 'flex-start';
    case AlignItemsCSS.flexEnd:
      return 'flex-end';
    case AlignItemsCSS.center:
      return 'center';
    case AlignItemsCSS.baseline:
      return 'baseline';
    case AlignItemsCSS.stretch:
      return 'stretch';
    default:
      throw Exception('Invalid value AlignItemsCSS');
  }
}

enum AlignSelfCSS { auto, flexStart, flexEnd, center, baseline, stretch }

String mapperAlignSelfCSS(AlignSelfCSS value) {
  switch (value) {
    case AlignSelfCSS.auto:
      return 'auto';
    case AlignSelfCSS.flexStart:
      return 'flex-start';
    case AlignSelfCSS.flexEnd:
      return 'flex-end';
    case AlignSelfCSS.center:
      return 'center';
    case AlignSelfCSS.baseline:
      return 'baseline';
    case AlignSelfCSS.stretch:
      return 'stretch';
    default:
      throw Exception('Invalid value AlignSelfCSS');
  }
}

enum AlignContentCSS { flexStart, flexEnd, center, spaceBetween, spaceAround, spaceEvenly, stretch }

String mapperAlignContent(AlignContentCSS value) {
  switch (value) {
    case AlignContentCSS.flexStart:
      return 'flex-start';
    case AlignContentCSS.flexEnd:
      return 'flex-end';
    case AlignContentCSS.center:
      return 'center';
    case AlignContentCSS.spaceBetween:
      return 'space-between';
    case AlignContentCSS.spaceAround:
      return 'space-around';
    case AlignContentCSS.spaceEvenly:
      return 'space-evenly';
    case AlignContentCSS.stretch:
      return 'stretch';
    default:
      throw Exception('Invalid value AlignContent');
  }
}

enum JustifyContentCSS { flexStart, flexEnd, center, spaceBetween, spaceAround, spaceEvenly }

String mapperJustifyContentCSS(JustifyContentCSS value) {
  switch (value) {
    case JustifyContentCSS.flexStart:
      return 'flex-start';
    case JustifyContentCSS.flexEnd:
      return 'flex-end';
    case JustifyContentCSS.center:
      return 'center';
    case JustifyContentCSS.spaceBetween:
      return 'space-between';
    case JustifyContentCSS.spaceAround:
      return 'space-around';
    case JustifyContentCSS.spaceEvenly:
      return 'space-evenly';
    default:
      throw Exception('Invalid value JustifyContentCSS');
  }
}

enum FlexWrapCSS { nowrap, wrap, wrapReverse }

String mapperFlexWrapCSS(FlexWrapCSS value) {
  switch (value) {
    case FlexWrapCSS.nowrap:
      return 'nowrap';
    case FlexWrapCSS.wrap:
      return 'wrap';
    case FlexWrapCSS.wrapReverse:
      return 'wrap-reverse';
    default:
      throw Exception('Invalid value FlexWrapCSS');
  }
}

class FlexCSS {
  final num grow;
  final num shrink;
  final SizeCSS basis;

  const FlexCSS({this.grow = 0, this.shrink = 1, this.basis = SizeCSS.auto});

  static const auto = FlexCSS(grow: 1, shrink: 1, basis: SizeCSS.auto);

  String get text => [
        if (grow != null) '$grow',
        if (shrink != null) '$shrink',
        if (basis != null) '${basis.text}',
      ].join(' ');
}
