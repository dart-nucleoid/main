import 'package:nucleoid/nucleoid.dart';

import 'object_factory.dart';

typedef FunctionTestFactory = Future<void> Function({@required bool autoCorrect});

class FactoryNucleoid {
  static final FactoryNucleoid _singleton = FactoryNucleoid._internal();

  factory FactoryNucleoid() {
    return _singleton;
  }

  FactoryNucleoid._internal();

  final Map<String, ObjectFactory> factoryMap = {};

  void init(Map<ObjectFactory, List<String>> map) {
    map.forEach((key, value) {
      value.forEach((factory) {
        if (factoryMap.containsKey(factory)) throw Exception('FactoryNucleoid: factory "$factory" init before.');
        factoryMap[factory] = key;
      });
    });
  }

  Future<void> test(List<FunctionTestFactory> tests, {@required bool autoCorrect}) =>
      Future.forEach<FunctionTestFactory>(tests, (test) => test(autoCorrect: autoCorrect));

  static ObjectFactory get(String key) {
    if (_singleton.factoryMap.containsKey(key)) {
      return _singleton.factoryMap[key];
    } else {
      throw Exception('FactoryNucleoid: factory "$key" does\'t init.');
    }
  }
}
