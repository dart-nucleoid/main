import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'model_mysql.dart';
import 'node_element.dart';

Builder nodeElement(BuilderOptions options) => SharedPartBuilder([NodeElementGenerator()], 'node_element');

Builder modelMysql(BuilderOptions options) => SharedPartBuilder([ModelMysqlGenerator()], 'model_mysql');