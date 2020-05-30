import 'package:nucleoid/nucleoid.dart';

import 'css_property.dart';
import 'duration.dart';
import 'timing_function.dart';

class TransitionCSS {
  final DurationCSS duration;
  final DurationCSS delay;
  final PropertyCSS property;
  final TimingFunctionCSS timingFunction;

  const TransitionCSS({@required this.duration, this.delay, this.property, this.timingFunction});

  String get text => [
        if (property != null) property.text,
        duration.secondsText,
        if (delay != null) delay.secondsText,
        if (timingFunction != null) timingFunction.text,
      ].join(' ');

  TransitionCSS copyWith(
          {DurationCSS duration, DurationCSS delay, PropertyCSS property, TimingFunctionCSS timingFunction}) =>
      TransitionCSS(
        duration: duration ?? this.duration,
        delay: delay ?? this.delay,
        property: property ?? this.property,
        timingFunction: timingFunction ?? this.timingFunction,
      );
}

class TransitionCSSList extends TransitionCSS {
  final List<TransitionCSS> list;

  const TransitionCSSList(this.list);

  @override
  String get text => list.map((e) => e.text).join(',');
}
