import 'object_factory.dart';

class FactoryNucleoid {
  static final FactoryNucleoid _singleton = FactoryNucleoid._internal();

  factory FactoryNucleoid() {
    return _singleton;
  }

  FactoryNucleoid._internal();

  final Map<String, ObjectFactory> factoryMap = {};

  void init(Map<String, ObjectFactory> map) {
    map.forEach((key, value) {
      if (factoryMap.containsKey(key)) throw Exception('FactoryNucleoid: factory "$key" init before.');
      factoryMap[key] = value;
    });
  }

  static ObjectFactory get(String key) {
    if (_singleton.factoryMap.containsKey(key)) {
      return _singleton.factoryMap[key];
    } else {
      throw Exception('FactoryNucleoid: factory "$key" does\'t init.');
    }
  }
}
