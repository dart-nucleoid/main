import 'package:logging/logging.dart';

void logger() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((LogRecord rec) {
    print(
      '[${DateTime.now().toString().padRight(26)}] [${rec.level.name.padRight(7)}] [${rec.loggerName.padRight(25)}] ${rec.message}',
    );
  });
}
