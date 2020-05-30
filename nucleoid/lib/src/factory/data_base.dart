import 'package:mysql1/mysql1.dart';

import 'object_factory.dart';

class MySQLObjectFactory implements ObjectFactory {
  final String host;
  final int port;
  final String user;
  final String _password;
  final String db;
  final bool useSSL;

  MySQLObjectFactory({this.host, this.port, this.user, String password, this.db, this.useSSL = false})
      : _password = password;

  MySqlConnection _connection;

  Future _connect() async {
    if (_connection != null) return;
    _connection = await MySqlConnection.connect(ConnectionSettings(
        host: host,
        port: port,
        user: user,
        password: _password,
        db: db,
        useSSL: useSSL,
    ));

    await _connection.query('USE `$db`');
  }

  Future<Results> query(String sql, [List<Object> values]) async {
    await _connect();

    return _connection.query(sql, values);
  }
}