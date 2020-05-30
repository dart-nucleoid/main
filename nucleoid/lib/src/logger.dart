import 'package:logging/logging.dart';

void logger({bool disableMySQL = true}) {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((LogRecord rec) {
    if (disableMySQL &&
        [
          'MySqlConnection',
          'BufferedSocket',
          'HandshakeHandler',
          'AuthHandler',
          'QueryStreamHandler',
          'PrepareHandler',
          'BinaryDataPacket',
          'ExecuteQueryHandler'
        ].contains(rec.loggerName)) return;

    print('[${rec.level.name.padRight(7)}] [${rec.loggerName.padRight(25)}] ${rec.message}');
  });
}
