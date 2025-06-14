class PropertyCSS {
  final String name;

  const PropertyCSS(this.name);

  String build() => name;
}

class PropertyCSSList extends PropertyCSS {
  final List<PropertyCSS> list;

  const PropertyCSSList(this.list) : super('');

  @override
  String build() => list.map((e) => e.name).join(',');
}

abstract class CSS {
  static const alignContent = PropertyCSS('align-content');
  static const alignItems = PropertyCSS('align-items');
  static const alignSelf = PropertyCSS('align-self');
  static const background = PropertyCSS('background');
  static const backgroundColor = PropertyCSS('background-color');
  static const backgroundImage = PropertyCSS('background-image');
  static const backgroundPosition = PropertyCSS('background-position');
  static const backgroundRepeat = PropertyCSS('background-repeat');
  static const backgroundSize = PropertyCSS('background-size');
  static const border = PropertyCSS('border');
  static const borderBottom = PropertyCSS('border-bottom');
  static const borderCollapse = PropertyCSS('border-collapse');
  static const borderLeft = PropertyCSS('border-left');
  static const borderRadius = PropertyCSS('border-radius');
  static const borderRight = PropertyCSS('border-right');
  static const borderTop = PropertyCSS('border-top');
  static const bottom = PropertyCSS('bottom');
  static const boxShadow = PropertyCSS('box-shadow');
  static const boxSizing = PropertyCSS('box-sizing');
  static const color = PropertyCSS('color');
  static const content = PropertyCSS('content');
  static const cursor = PropertyCSS('cursor');
  static const display = PropertyCSS('display');
  static const filter = PropertyCSS('filter');
  static const fontFamily = PropertyCSS('font-family');
  static const flexDirection = PropertyCSS('flex-direction');
  static const flex = PropertyCSS('flex');
  static const flexBasis = PropertyCSS('flex-basis');
  static const flexGrow = PropertyCSS('flex-grow');
  static const flexShrink = PropertyCSS('flex-shrink');
  static const flexWrap = PropertyCSS('flex-wrap');
  static const float = PropertyCSS('float');
  static const fontSize = PropertyCSS('font-size');
  static const fontWeight = PropertyCSS('font-weight');
  static const pointerEvents = PropertyCSS('pointer-events');
  static const position = PropertyCSS('position');
  static const height = PropertyCSS('height');
  static const lineHeight = PropertyCSS('line-height');
  static const justifyContent = PropertyCSS('justify-content');
  static const left = PropertyCSS('left');
  static const margin = PropertyCSS('margin');
  static const marginBottom = PropertyCSS('margin-bottom');
  static const marginLeft = PropertyCSS('margin-left');
  static const marginRight = PropertyCSS('margin-right');
  static const marginTop = PropertyCSS('margin-top');
  static const mask = PropertyCSS('-webkit-mask');
  static const maskImage = PropertyCSS('-webkit-mask-image');
  static const maskPosition = PropertyCSS('-webkit-mask-position');
  static const maskRepeat = PropertyCSS('-webkit-mask-repeat');
  static const maskSize = PropertyCSS('-webkit-mask-size');
  static const maxHeight = PropertyCSS('max-height');
  static const maxWidth = PropertyCSS('max-width');
  static const minHeight = PropertyCSS('min-height');
  static const minWidth = PropertyCSS('min-width');
  static const objectFit = PropertyCSS('object-fit');
  static const objectPosition = PropertyCSS('object-position');
  static const opacity = PropertyCSS('opacity');
  static const outline = PropertyCSS('outline');
  static const overflow = PropertyCSS('overflow');
  static const overflowX = PropertyCSS('overflow-x');
  static const overflowY = PropertyCSS('overflow-y');
  static const overflowWrap = PropertyCSS('overflow-wrap');
  static const padding = PropertyCSS('padding');
  static const right = PropertyCSS('right');
  static const textAlign = PropertyCSS('text-align');
  static const textDecoration = PropertyCSS('text-decoration');
  static const textTransform = PropertyCSS('text-transform');
  static const transition = PropertyCSS('transition');
  static const transitionProperty = PropertyCSS('transition-property');
  static const transitionDuration = PropertyCSS('transition-duration');
  static const transitionDelay = PropertyCSS('transition-delay');
  static const transitionTimingFunction = PropertyCSS(
    'transition-timing-function',
  );
  static const top = PropertyCSS('top');
  static const userSelect = PropertyCSS('user-select');
  static const whiteSpace = PropertyCSS('white-space');
  static const width = PropertyCSS('width');
  static const zIndex = PropertyCSS('z-index');
}
