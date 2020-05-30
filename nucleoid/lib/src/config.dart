import 'package:loggable/loggable.dart';

class Config with Loggable {
  final Map<String, FactoryConfig> factories;
  Config({this.factories});
}

abstract class FactoryConfig {}