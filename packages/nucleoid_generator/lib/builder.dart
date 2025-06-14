import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'node_element.dart';

Builder nodeElement(BuilderOptions options) =>
    SharedPartBuilder([NodeElementGenerator()], 'node_element');
