import 'package:nucleoid/src/css/timing_function.dart';

import '../../html.dart';

class StyleCSS {
  final String textData;
  final AlignContentCSS alignContent;
  final AlignItemsCSS alignItems;
  final AlignSelfCSS alignSelf;
  final BackgroundCSS background;
  final ColorCSS backgroundColor;
  final String backgroundImage;
  final ImagePositionCSS backgroundPosition;
  final ImageRepeatCSS backgroundRepeat;
  final ImageSizeCSS backgroundSize;
  final BorderCSS border;
  final BorderCSS borderBottom;
  final BorderCollapseCSS borderCollapse;
  final BorderCSS borderLeft;
  final BorderRadiusCSS borderRadius;
  final BorderCSS borderRight;
  final BorderCSS borderTop;
  final SizeCSS bottom;
  final BoxShadowCSS boxShadow;
  final BoxSizingCSS boxSizing;
  final ColorCSS color;
  final ContentCSS content;
  final CursorCSS cursor;
  final PointerEventsCSS pointerEvents;
  final PositionCSS position;
  final DisplayCSS display;
  final FilterCSS filter;
  final FlexDirectionCSS flexDirection;
  final FlexCSS flex;
  final SizeCSS flexBasis;
  final num flexGrow;
  final num flexShrink;
  final FlexWrapCSS flexWrap;
  final FloatCSS float;
  final String fontFamily;
  final SizeCSS fontSize;
  final FontWeightCSS fontWeight;
  final SizeCSS height;
  final SizeCSS lineHeight;
  final JustifyContentCSS justifyContent;
  final SizeCSS left;
  final EdgeInsetsCSS margin;
  final SizeCSS marginBottom;
  final SizeCSS marginLeft;
  final SizeCSS marginRight;
  final SizeCSS marginTop;
  final MaskCSS mask;
  final String maskImage;
  final ImagePositionCSS maskPosition;
  final ImageRepeatCSS maskRepeat;
  final ImageSizeCSS maskSize;
  final SizeCSS maxHeight;
  final SizeCSS maxWidth;
  final SizeCSS minHeight;
  final SizeCSS minWidth;
  final ObjectFitCSS objectFit;
  final ImagePositionCSS objectPosition;
  final double opacity;
  final BorderCSS outline;
  final OverflowCSS overflow;
  final OverflowCSS overflowX;
  final OverflowCSS overflowY;
  final OverflowWrapCSS overflowWrap;
  final EdgeInsetsCSS padding;
  final SizeCSS right;
  final TextAlignCSS textAlign;
  final TextDecorationCSS textDecoration;
  final TextTransformCSS textTransform;
  final TransitionCSS transition;
  final PropertyCSS transitionProperty;
  final DurationCSS transitionDuration;
  final DurationCSS transitionDelay;
  final TimingFunctionCSS transitionTimingFunction;
  final SizeCSS top;
  final UserSelectCSS userSelect;
  final WhiteSpaceCSS whiteSpace;
  final SizeCSS width;
  final int zIndex;
  final List<PropertyCSS> important;

  const StyleCSS(
      {this.textData,
      this.alignContent,
      this.alignItems,
      this.alignSelf,
      this.background,
      this.backgroundColor,
      this.backgroundImage,
      this.backgroundPosition,
      this.backgroundRepeat,
      this.backgroundSize,
      this.border,
      this.borderBottom,
      this.borderCollapse,
      this.borderLeft,
      this.borderRadius,
      this.borderRight,
      this.borderTop,
      this.bottom,
      this.boxShadow,
      this.boxSizing,
      this.color,
      this.content,
      this.cursor,
      this.pointerEvents,
      this.position,
      this.display,
      this.filter,
      this.fontFamily,
      this.flexDirection,
      this.flex,
      this.flexBasis,
      this.flexGrow,
      this.flexShrink,
      this.flexWrap,
      this.float,
      this.fontSize,
      this.fontWeight,
      this.height,
      this.lineHeight,
      this.justifyContent,
      this.left,
      this.margin,
      this.marginBottom,
      this.marginLeft,
      this.marginRight,
      this.marginTop,
      this.mask,
      this.maskImage,
      this.maskPosition,
      this.maskRepeat,
      this.maskSize,
      this.maxHeight,
      this.maxWidth,
      this.minHeight,
      this.minWidth,
      this.objectFit,
      this.objectPosition,
      this.opacity,
      this.outline,
      this.overflow,
      this.overflowX,
      this.overflowY,
      this.overflowWrap,
      this.padding,
      this.right,
      this.textAlign,
      this.textDecoration,
      this.textTransform,
      this.transition,
      this.transitionProperty,
      this.transitionDuration,
      this.transitionDelay,
      this.transitionTimingFunction,
      this.top,
      this.userSelect,
      this.whiteSpace,
      this.width,
      this.zIndex,
      this.important = const []});

  factory StyleCSS.fromText(String textData) => StyleCSS(textData: textData);

  String build() =>
      textData ??
      [
        if (alignContent != null)
          '${CSS.alignContent.name}:${mapperAlignContent(alignContent)}${_isImportant(CSS.alignContent)}',
        if (alignItems != null)
          '${CSS.alignItems.name}:${mapperAlignItemsCSS(alignItems)}${_isImportant(CSS.alignItems)}',
        if (alignSelf != null) '${CSS.alignSelf.name}:${mapperAlignSelfCSS(alignSelf)}${_isImportant(CSS.alignSelf)}',
        if (background != null) '${CSS.background.name}:${background.build()}${_isImportant(CSS.background)}',
        if (backgroundColor != null)
          '${CSS.backgroundColor.name}:${backgroundColor.build()}${_isImportant(CSS.backgroundColor)}',
        if (backgroundImage != null)
          '${CSS.backgroundImage.name}:url($backgroundImage)${_isImportant(CSS.backgroundImage)}',
        if (backgroundPosition != null)
          '${CSS.backgroundPosition.name}:${backgroundPosition.build()}${_isImportant(CSS.backgroundPosition)}',
        if (backgroundRepeat != null)
          '${CSS.backgroundRepeat.name}:${backgroundRepeat.build()}${_isImportant(CSS.backgroundRepeat)}',
        if (backgroundSize != null)
          '${CSS.backgroundSize.name}:${backgroundSize.build()}${_isImportant(CSS.backgroundSize)}',
        if (border != null) '${CSS.border.name}:${border.build()}${_isImportant(CSS.border)}',
        if (borderBottom != null) '${CSS.borderBottom.name}:${borderBottom.build()}${_isImportant(CSS.borderBottom)}',
        if (borderCollapse != null)
          '${CSS.borderCollapse.name}:${mapperBorderCollapseCSS(borderCollapse)}${_isImportant(CSS.borderCollapse)}',
        if (borderLeft != null) '${CSS.borderLeft.name}:${borderLeft.build()}${_isImportant(CSS.borderLeft)}',
        if (borderRadius != null) '${CSS.borderRadius.name}:${borderRadius.build()}${_isImportant(CSS.borderRadius)}',
        if (borderRight != null) '${CSS.borderRight.name}:${borderRight.build()}${_isImportant(CSS.borderRight)}',
        if (borderTop != null) '${CSS.borderTop.name}:${borderTop.build()}${_isImportant(CSS.borderTop)}',
        if (bottom != null) '${CSS.bottom.name}:${bottom.build()}${_isImportant(CSS.bottom)}',
        if (boxShadow != null) '${CSS.boxShadow.name}:${boxShadow.build()}${_isImportant(CSS.boxShadow)}',
        if (boxSizing != null) '${CSS.boxSizing.name}:${mapperBoxSizingCSS(boxSizing)}${_isImportant(CSS.boxSizing)}',
        if (color != null) '${CSS.color.name}:${color.build()}${_isImportant(CSS.color)}',
        if (content != null) '${CSS.content.name}:${content.build()}${_isImportant(CSS.content)}',
        if (cursor != null) '${CSS.cursor.name}:${cursor.build()}${_isImportant(CSS.cursor)}',
        if (display != null) '${CSS.display.name}:${mapperDisplayCSS(display)}${_isImportant(CSS.display)}',
        if (filter != null) '${CSS.filter.name}:${filter.build()}${_isImportant(CSS.filter)}',
        if (fontFamily != null) '${CSS.fontFamily.name}:$fontFamily${_isImportant(CSS.fontFamily)}',
        if (flexDirection != null)
          '${CSS.flexDirection.name}:${mapperFlexDirectionCSS(flexDirection)}${_isImportant(CSS.flexDirection)}',
        if (flexBasis != null) '${CSS.flexBasis.name}:${flexBasis.build()}${_isImportant(CSS.flexBasis)}',
        if (flex != null) '${CSS.flex.name}:${flex.build()}${_isImportant(CSS.flex)}',
        if (flexGrow != null) '${CSS.flexGrow.name}:${flexGrow}${_isImportant(CSS.flexGrow)}',
        if (flexShrink != null) '${CSS.flexShrink.name}:${flexShrink}${_isImportant(CSS.flexShrink)}',
        if (flexWrap != null) '${CSS.flexWrap.name}:${mapperFlexWrapCSS(flexWrap)}${_isImportant(CSS.flexWrap)}',
        if (fontSize != null) '${CSS.fontSize.name}:${fontSize.build()}${_isImportant(CSS.fontSize)}',
        if (fontWeight != null)
          '${CSS.fontWeight.name}:${mapperFontWeightCSS(fontWeight)}${_isImportant(CSS.fontWeight)}',
        if (float != null) '${CSS.float.name}:${mapperFloatCSS(float)}${_isImportant(CSS.float)}',
        if (pointerEvents != null)
          '${CSS.pointerEvents.name}:${mapperPointerEventsCSS(pointerEvents)}${_isImportant(CSS.pointerEvents)}',
        if (position != null) '${CSS.position.name}:${mapperPositionCSS(position)}${_isImportant(CSS.position)}',
        if (height != null) '${CSS.height.name}:${height.build()}${_isImportant(CSS.height)}',
        if (lineHeight != null) '${CSS.lineHeight.name}:${lineHeight.build()}${_isImportant(CSS.lineHeight)}',
        if (justifyContent != null)
          '${CSS.justifyContent.name}:${mapperJustifyContentCSS(justifyContent)}${_isImportant(CSS.justifyContent)}',
        if (left != null) '${CSS.left.name}:${left.build()}${_isImportant(CSS.left)}',
        if (margin != null) '${CSS.margin.name}:${margin.build()}${_isImportant(CSS.margin)}',
        if (marginBottom != null) '${CSS.marginBottom.name}:${marginBottom.build()}${_isImportant(CSS.marginBottom)}',
        if (marginLeft != null) '${CSS.marginLeft.name}:${marginLeft.build()}${_isImportant(CSS.marginLeft)}',
        if (marginRight != null) '${CSS.marginRight.name}:${marginRight.build()}${_isImportant(CSS.marginRight)}',
        if (marginTop != null) '${CSS.marginTop.name}:${marginTop.build()}${_isImportant(CSS.marginTop)}',
        if (mask != null) '${CSS.mask.name}:${mask.build()}${_isImportant(CSS.mask)}',
        if (maskImage != null) '${CSS.maskImage.name}:url($maskImage)${_isImportant(CSS.maskImage)}',
        if (maskPosition != null) '${CSS.maskPosition.name}:${maskPosition.build()}${_isImportant(CSS.maskPosition)}',
        if (maskRepeat != null) '${CSS.maskRepeat.name}:${maskRepeat.build()}${_isImportant(CSS.maskRepeat)}',
        if (maskSize != null) '${CSS.maskSize.name}:${maskSize.build()}${_isImportant(CSS.maskSize)}',
        if (maxHeight != null) '${CSS.maxHeight.name}:${maxHeight.build()}${_isImportant(CSS.maxHeight)}',
        if (maxWidth != null) '${CSS.maxWidth.name}:${maxWidth.build()}${_isImportant(CSS.maxWidth)}',
        if (minHeight != null) '${CSS.minHeight.name}:${minHeight.build()}${_isImportant(CSS.minHeight)}',
        if (minWidth != null) '${CSS.minWidth.name}:${minWidth.build()}${_isImportant(CSS.minWidth)}',
        if (objectFit != null) '${CSS.objectFit.name}:${mapperObjectFitCSS(objectFit)}${_isImportant(CSS.objectFit)}',
        if (objectPosition != null)
          '${CSS.objectPosition.name}:${objectPosition.build()}${_isImportant(CSS.objectPosition)}',
        if (opacity != null) '${CSS.opacity.name}:${opacity}${_isImportant(CSS.opacity)}',
        if (outline != null) '${CSS.outline.name}:${outline.build()}${_isImportant(CSS.outline)}',
        if (overflow != null) '${CSS.overflow.name}:${mapperOverflowCSS(overflow)}${_isImportant(CSS.overflow)}',
        if (overflowX != null) '${CSS.overflowX.name}:${mapperOverflowCSS(overflowX)}${_isImportant(CSS.overflowX)}',
        if (overflowY != null) '${CSS.overflowY.name}:${mapperOverflowCSS(overflowY)}${_isImportant(CSS.overflowY)}',
        if (overflowWrap != null)
          '${CSS.overflowWrap.name}:${mapperOverflowWrapCSS(overflowWrap)}${_isImportant(CSS.overflowWrap)}',
        if (padding != null) '${CSS.padding.name}:${padding.build()}${_isImportant(CSS.padding)}',
        if (right != null) '${CSS.right.name}:${right.build()}${_isImportant(CSS.right)}',
        if (textAlign != null) '${CSS.textAlign.name}:${mapperTextAlignCSS(textAlign)}${_isImportant(CSS.textAlign)}',
        if (textDecoration != null)
          '${CSS.textDecoration.name}:${textDecoration.build()}${_isImportant(CSS.textDecoration)}',
        if (textTransform != null)
          '${CSS.textTransform.name}:${mapperTextTransformCSS(textTransform)}${_isImportant(CSS.textTransform)}',
        if (transition != null) '${CSS.transition.name}:${transition.build()}${_isImportant(CSS.transition)}',
        if (transitionProperty != null)
          '${CSS.transitionProperty.name}:${transitionProperty.build()}${_isImportant(CSS.transitionProperty)}',
        if (transitionDuration != null)
          '${CSS.transitionDuration.name}:${transitionDuration.secondsText}${_isImportant(CSS.transitionDuration)}',
        if (transitionDelay != null)
          '${CSS.transitionDelay.name}:${transitionDelay.secondsText}${_isImportant(CSS.transitionDelay)}',
        if (transitionTimingFunction != null)
          '${CSS.transitionTimingFunction.name}:${transitionTimingFunction.build()}${_isImportant(CSS.transitionTimingFunction)}',
        if (top != null) '${CSS.top.name}:${top.build()}${_isImportant(CSS.top)}',
        if (userSelect != null)
          '${CSS.userSelect.name}:${mapperUserSelectCSS(userSelect)}${_isImportant(CSS.userSelect)}',
        if (whiteSpace != null)
          '${CSS.whiteSpace.name}:${mapperWhiteSpaceCSS(whiteSpace)}${_isImportant(CSS.whiteSpace)}',
        if (width != null) '${CSS.width.name}:${width.build()}${_isImportant(CSS.width)}',
        if (zIndex != null) '${CSS.zIndex.name}:$zIndex${_isImportant(CSS.zIndex)}',
      ].join(';');

  String _isImportant(PropertyCSS propertyCSS) {
    if (important.contains(propertyCSS)) {
      return '!important';
    } else {
      return '';
    }
  }

  @override
  bool operator ==(other) => identical(this, other) || (other is StyleCSS && build() == other.build());
}
