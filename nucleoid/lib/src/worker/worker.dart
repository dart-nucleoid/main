import 'dart:isolate';

import 'package:loggable/loggable.dart';

class Worker<T> with Loggable {
  final Function function;

  Isolate _isolate;
  ReceivePort _receivePort;
  SendPort _sendPort;

  Worker(this.function);

  Future init() async {
    log.fine('start worker');
    _receivePort = ReceivePort();
    _isolate = await Isolate.spawn<_MessageSpawn>(_isolateEntryPoint, _MessageSpawn(_receivePort.sendPort, function));
    _sendPort = await _receivePort.first;
  }

  static void _isolateEntryPoint(_MessageSpawn message) async {
    var port = ReceivePort();

    message.sendPort.send(port.sendPort);

    await for (var msg in port) {
      var data = message.function(msg[0]);
      SendPort replyTo = msg[1];
      replyTo.send(data);
    }
  }

  Future send(T msg) {
    var response = ReceivePort();
    _sendPort.send([msg, response.sendPort]);
    return response.first;
  }

  void kill() {
    _receivePort?.close();
    _isolate?.kill();
    log.fine('kill worker');
  }

  static Future compute(Function function, msg) async {
    var worker = Worker(function);

    await worker.init();
    var result = await worker.send(msg);
    worker.kill();
    return result;
  }
}

class _MessageSpawn {
  final SendPort sendPort;
  final Function function;

  const _MessageSpawn(this.sendPort, this.function);
}
