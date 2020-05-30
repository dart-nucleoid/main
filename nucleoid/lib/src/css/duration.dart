class DurationCSS extends Duration {
  const DurationCSS({
    int days = 0,
    int hours = 0,
    int minutes = 0,
    int seconds = 0,
    int milliseconds = 0,
    int microseconds = 0,
  }) : super(
          days: days,
          hours: hours,
          minutes: minutes,
          seconds: seconds,
          milliseconds: milliseconds,
          microseconds: microseconds,
        );

  String get secondsText => '${inSeconds}s';

  String get millisecondsText => '${inMilliseconds}ms';
}

class DurationCSSList extends DurationCSS {
  final List<DurationCSS> list;

  const DurationCSSList(this.list);

  @override
  String get secondsText => list.map((e) => e.secondsText).join(',');

  @override
  String get millisecondsText => list.map((e) => e.millisecondsText).join(',');
}
