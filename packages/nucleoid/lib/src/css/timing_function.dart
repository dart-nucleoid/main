enum StepTimingCSS { start, end }

class _TimingFunctionCSSBase {
  final String value;

  const _TimingFunctionCSSBase(this.value);

  String build() => value;
}

class TimingFunctionCSS extends _TimingFunctionCSSBase {
  const TimingFunctionCSS(String value) : super(value);

  static const ease = _TimingFunctionCSSBase('ease');
  static const easeIn = _TimingFunctionCSSBase('ease-in');
  static const easeOut = _TimingFunctionCSSBase('ease-out');
  static const easeInOut = _TimingFunctionCSSBase('ease-in-out');
  static const linear = _TimingFunctionCSSBase('linear');
  static const stepStart = _TimingFunctionCSSBase('step-start');
  static const stepEnd = _TimingFunctionCSSBase('step-end');

  TimingFunctionCSS.steps(int count, StepTimingCSS step)
    : super('steps($count, ${_mapperStepsTimingCSS(step)})');

  static String _mapperStepsTimingCSS(StepTimingCSS value) {
    switch (value) {
      case StepTimingCSS.start:
        return 'start';
      case StepTimingCSS.end:
        return 'end';
    }
  }

  const TimingFunctionCSS.cubicBezier(
    double x1,
    double y1,
    double x2,
    double y2,
  ) : super('cubic-bezier($x1, $y1, $x2, $y2)');
}

class TimingFunctionCSSList extends TimingFunctionCSS {
  final List<TimingFunctionCSS> list;

  const TimingFunctionCSSList(this.list) : super('');

  @override
  String build() => list.map((e) => e.build()).join(',');
}
