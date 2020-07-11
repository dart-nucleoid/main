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
      this.width,
      this.zIndex,
      this.important = const []});

  factory StyleCSS.fromText(String textData) => StyleCSS(textData: textData);

  String build() =>
      textData ??
      [
        if (alignContent != null)
          '${CSS.alignContent.text}:${mapperAlignContent(alignContent)}${_isImportant(CSS.alignContent)}',
        if (alignItems != null)
          '${CSS.alignItems.text}:${mapperAlignItemsCSS(alignItems)}${_isImportant(CSS.alignItems)}',
        if (alignSelf != null) '${CSS.alignSelf.text}:${mapperAlignSelfCSS(alignSelf)}${_isImportant(CSS.alignSelf)}',
        if (background != null) '${CSS.background.text}:${background.text}${_isImportant(CSS.background)}',
        if (backgroundColor != null)
          '${CSS.backgroundColor.text}:${backgroundColor.text}${_isImportant(CSS.backgroundColor)}',
        if (backgroundImage != null)
          '${CSS.backgroundImage.text}:url($backgroundImage)${_isImportant(CSS.backgroundImage)}',
        if (backgroundPosition != null)
          '${CSS.backgroundPosition.text}:${backgroundPosition.text}${_isImportant(CSS.backgroundPosition)}',
        if (backgroundRepeat != null)
          '${CSS.backgroundRepeat.text}:${backgroundRepeat.text}${_isImportant(CSS.backgroundRepeat)}',
        if (backgroundSize != null)
          '${CSS.backgroundSize.text}:${backgroundSize.text}${_isImportant(CSS.backgroundSize)}',
        if (border != null) '${CSS.border.text}:${border.text}${_isImportant(CSS.border)}',
        if (borderBottom != null) '${CSS.borderBottom.text}:${borderBottom.text}${_isImportant(CSS.borderBottom)}',
        if (borderCollapse != null)
          '${CSS.borderCollapse.text}:${mapperBorderCollapseCSS(borderCollapse)}${_isImportant(CSS.borderCollapse)}',
        if (borderLeft != null) '${CSS.borderLeft.text}:${borderLeft.text}${_isImportant(CSS.borderLeft)}',
        if (borderRadius != null) '${CSS.borderRadius.text}:${borderRadius.text}${_isImportant(CSS.borderRadius)}',
        if (borderRight != null) '${CSS.borderRight.text}:${borderRight.text}${_isImportant(CSS.borderRight)}',
        if (borderTop != null) '${CSS.borderTop.text}:${borderTop.text}${_isImportant(CSS.borderTop)}',
        if (bottom != null) '${CSS.bottom.text}:${bottom.text}${_isImportant(CSS.bottom)}',
        if (boxShadow != null) '${CSS.boxShadow.text}:${boxShadow.text}${_isImportant(CSS.boxShadow)}',
        if (boxSizing != null) '${CSS.boxSizing.text}:${mapperBoxSizingCSS(boxSizing)}${_isImportant(CSS.boxSizing)}',
        if (color != null) '${CSS.color.text}:${color.text}${_isImportant(CSS.color)}',
        if (content != null) '${CSS.content.text}:${content.text}${_isImportant(CSS.content)}',
        if (cursor != null) '${CSS.cursor.text}:${cursor.text}${_isImportant(CSS.cursor)}',
        if (display != null) '${CSS.display.text}:${mapperDisplayCSS(display)}${_isImportant(CSS.display)}',
        if (filter != null) '${CSS.filter.text}:${filter.text}${_isImportant(CSS.filter)}',
        if (fontFamily != null) '${CSS.fontFamily.text}:$fontFamily${_isImportant(CSS.fontFamily)}',
        if (flexDirection != null)
          '${CSS.flexDirection.text}:${mapperFlexDirectionCSS(flexDirection)}${_isImportant(CSS.flexDirection)}',
        if (flexBasis != null) '${CSS.flexBasis.text}:${flexBasis.text}${_isImportant(CSS.flexBasis)}',
        if (flex != null) '${CSS.flex.text}:${flex.text}${_isImportant(CSS.flex)}',
        if (flexGrow != null) '${CSS.flexGrow.text}:${flexGrow}${_isImportant(CSS.flexGrow)}',
        if (flexShrink != null) '${CSS.flexShrink.text}:${flexShrink}${_isImportant(CSS.flexShrink)}',
        if (flexWrap != null) '${CSS.flexWrap.text}:${mapperFlexWrapCSS(flexWrap)}${_isImportant(CSS.flexWrap)}',
        if (fontSize != null) '${CSS.fontSize.text}:${fontSize.text}${_isImportant(CSS.fontSize)}',
        if (fontWeight != null)
          '${CSS.fontWeight.text}:${mapperFontWeightCSS(fontWeight)}${_isImportant(CSS.fontWeight)}',
        if (float != null) '${CSS.float.text}:${mapperFloatCSS(float)}${_isImportant(CSS.float)}',
        if (pointerEvents != null)
          '${CSS.pointerEvents.text}:${mapperPointerEventsCSS(pointerEvents)}${_isImportant(CSS.pointerEvents)}',
        if (position != null) '${CSS.position.text}:${mapperPositionCSS(position)}${_isImportant(CSS.position)}',
        if (height != null) '${CSS.height.text}:${height.text}${_isImportant(CSS.height)}',
        if (lineHeight != null) '${CSS.lineHeight.text}:${lineHeight.text}${_isImportant(CSS.lineHeight)}',
        if (justifyContent != null)
          '${CSS.justifyContent.text}:${mapperJustifyContentCSS(justifyContent)}${_isImportant(CSS.justifyContent)}',
        if (left != null) '${CSS.left.text}:${left.text}${_isImportant(CSS.left)}',
        if (margin != null) '${CSS.margin.text}:${margin.text}${_isImportant(CSS.margin)}',
        if (marginBottom != null) '${CSS.marginBottom.text}:${marginBottom.text}${_isImportant(CSS.marginBottom)}',
        if (marginLeft != null) '${CSS.marginLeft.text}:${marginLeft.text}${_isImportant(CSS.marginLeft)}',
        if (marginRight != null) '${CSS.marginRight.text}:${marginRight.text}${_isImportant(CSS.marginRight)}',
        if (marginTop != null) '${CSS.marginTop.text}:${marginTop.text}${_isImportant(CSS.marginTop)}',
        if (mask != null) '${CSS.mask.text}:${mask.text}${_isImportant(CSS.mask)}',
        if (maskImage != null) '${CSS.maskImage.text}:url($maskImage)${_isImportant(CSS.maskImage)}',
        if (maskPosition != null) '${CSS.maskPosition.text}:${maskPosition.text}${_isImportant(CSS.maskPosition)}',
        if (maskRepeat != null) '${CSS.maskRepeat.text}:${maskRepeat.text}${_isImportant(CSS.maskRepeat)}',
        if (maskSize != null) '${CSS.maskSize.text}:${maskSize.text}${_isImportant(CSS.maskSize)}',
        if (maxHeight != null) '${CSS.maxHeight.text}:${maxHeight.text}${_isImportant(CSS.maxHeight)}',
        if (maxWidth != null) '${CSS.maxWidth.text}:${maxWidth.text}${_isImportant(CSS.maxWidth)}',
        if (minHeight != null) '${CSS.minHeight.text}:${minHeight.text}${_isImportant(CSS.minHeight)}',
        if (minWidth != null) '${CSS.minWidth.text}:${minWidth.text}${_isImportant(CSS.minWidth)}',
        if (objectFit != null) '${CSS.objectFit.text}:${mapperObjectFitCSS(objectFit)}${_isImportant(CSS.objectFit)}',
        if (objectPosition != null)
          '${CSS.objectPosition.text}:${objectPosition.text}${_isImportant(CSS.objectPosition)}',
        if (opacity != null) '${CSS.opacity.text}:${opacity}${_isImportant(CSS.opacity)}',
        if (outline != null) '${CSS.outline.text}:${outline.text}${_isImportant(CSS.outline)}',
        if (overflow != null) '${CSS.overflow.text}:${mapperOverflowCSS(overflow)}${_isImportant(CSS.overflow)}',
        if (overflowX != null) '${CSS.overflowX.text}:${mapperOverflowCSS(overflowX)}${_isImportant(CSS.overflowX)}',
        if (overflowY != null) '${CSS.overflowY.text}:${mapperOverflowCSS(overflowY)}${_isImportant(CSS.overflowY)}',
        if (overflowWrap != null)
          '${CSS.overflowWrap.text}:${mapperOverflowWrapCSS(overflowWrap)}${_isImportant(CSS.overflowWrap)}',
        if (padding != null) '${CSS.padding.text}:${padding.text}${_isImportant(CSS.padding)}',
        if (right != null) '${CSS.right.text}:${right.text}${_isImportant(CSS.right)}',
        if (textAlign != null) '${CSS.textAlign.text}:${mapperTextAlignCSS(textAlign)}${_isImportant(CSS.textAlign)}',
        if (textDecoration != null)
          '${CSS.textDecoration.text}:${textDecoration.text}${_isImportant(CSS.textDecoration)}',
        if (textTransform != null)
          '${CSS.textTransform.text}:${mapperTextTransformCSS(textTransform)}${_isImportant(CSS.textTransform)}',
        if (transition != null) '${CSS.transition.text}:${transition.text}${_isImportant(CSS.transition)}',
        if (transitionProperty != null)
          '${CSS.transitionProperty.text}:${transitionProperty.text}${_isImportant(CSS.transitionProperty)}',
        if (transitionDuration != null)
          '${CSS.transitionDuration.text}:${transitionDuration.secondsText}${_isImportant(CSS.transitionDuration)}',
        if (transitionDelay != null)
          '${CSS.transitionDelay.text}:${transitionDelay.secondsText}${_isImportant(CSS.transitionDelay)}',
        if (transitionTimingFunction != null)
          '${CSS.transitionTimingFunction.text}:${transitionTimingFunction.text}${_isImportant(CSS.transitionTimingFunction)}',
        if (top != null) '${CSS.top.text}:${top.text}${_isImportant(CSS.top)}',
        if (userSelect != null)
          '${CSS.userSelect.text}:${mapperUserSelectCSS(userSelect)}${_isImportant(CSS.userSelect)}',
        if (width != null) '${CSS.width.text}:${width.text}${_isImportant(CSS.width)}',
        if (zIndex != null) '${CSS.zIndex.text}:$zIndex${_isImportant(CSS.zIndex)}',
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
