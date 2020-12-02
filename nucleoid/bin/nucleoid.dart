import 'dart:async';
import 'dart:io';

import 'package:args/args.dart';
import 'package:io/io.dart';
import 'package:nucleoid/nucleoid.dart';
import 'package:nucleoid/src/build_response/javascript_data.dart';
import 'package:yaml/yaml.dart';

void main(List<String> args) async {
  var parser = ArgParser()..addOption('port', abbr: 'p')..addOption('target', abbr: 't');
  var argResults = parser.parse(args);
  var command = args.isNotEmpty ? args.first.toLowerCase() : null;

  switch (command) {
    case 'build':
      await _build(argResults);
      break;
    case 'clean':
      _clean(argResults);
      break;
    case 'help':
    default:
      _help(command);
  }
}

const String _buildTempDir = 'build_temp';
const String _buildDir = 'build';

void _help(String action) {
  if (action != 'help') {
    print('\nNUCLEOID ERROR:');
    print('the command "$action" is not recognized.');
  }
  print('\nNUCLEOID HELP COMMAND:');
  print('1. help nucleoid commands:                    \$ pub run nucleoid help');
  print('2. build a standalone executable:             \$ pub run nucleoid build');
  print('           with target dart file:             \$ pub run nucleoid build -t bin/server.dart');
  print('3. clean builds and temp files:               \$ pub run nucleoid clean');
  print('');
}

Future<void> _build(ArgResults args) async {
  print('NUCLEOID START BUILD:');

  try {
    Map configYaml;

    if (File('pubspec.yaml').existsSync()) {
      var file = File('pubspec.yaml');
      var yamlString = file.readAsStringSync();
      configYaml = loadYaml(yamlString);
    }

    final binaryFileName = [
      'app',
      if (configYaml != null && configYaml.containsKey('name')) configYaml['name'],
      if (Platform.isWindows) 'exe'
    ].join('.');
    final currentDir = Directory.current;
    final tempDir = Directory('${currentDir.path}${Platform.pathSeparator}$_buildTempDir');
    final buildDir = Directory('${currentDir.path}${Platform.pathSeparator}$_buildDir');
    final tempFileOutput = '${tempDir.path}${Platform.pathSeparator}$binaryFileName';
    final buildFileOutput = '${buildDir.path}${Platform.pathSeparator}$binaryFileName';

    if (!tempDir.existsSync()) tempDir.createSync(recursive: true);

    if (configYaml != null && configYaml.containsKey('nucleoid')) {
      if (configYaml['nucleoid'] is YamlMap && configYaml['nucleoid'].containsKey('assets')) {
        _copyAssets(tempDir, configYaml['nucleoid']['assets']);
      }

      if (configYaml['nucleoid'] is YamlMap && configYaml['nucleoid'].containsKey('scripts')) {
        await _buildScripts(tempDir, configYaml['nucleoid']['scripts']);
      }
    }

    /// Run: dart2native
    var result2native =
        Process.runSync('dart2native', [args['target'] ?? 'bin/main.dart', '-o', tempFileOutput], runInShell: true);

    if (result2native.stdout.toString().isNotEmpty) print('dart2native result: ${result2native.stdout}');
    if (result2native.stderr.toString().isNotEmpty) {
      print('Error dart2native: ${result2native.stderr.toString()}');
    } else {
      /// Kill running before process:
      if (Platform.isWindows) {
        _killWindowsProcess(buildFileOutput);
      } else if (Platform.isLinux) {
        _killLinuxProcess(buildFileOutput);
      }

      try {
        if (buildDir.existsSync()) buildDir.deleteSync(recursive: true);
        copyPathSync(tempDir.path, buildDir.path);
        tempDir.deleteSync(recursive: true);
      } catch (e) {
        print('NUCLEOID ERROR: $e');
      }
    }

    print('NUCLEOID COMPLETE BUILD.');
  } catch (e) {
    print('NUCLEOID ERROR BUILD: $e');
  }
}

void _killWindowsProcess(String fileProcess) {
  var resultKill = Process.runSync('taskkill', ['/FI', 'WINDOWTITLE eq $fileProcess'], runInShell: true);

  if (resultKill.stdout.toString().isNotEmpty) print('taskkill result: ${resultKill.stdout}');
  if (resultKill.stderr.toString().isNotEmpty) print('Error taskkill: ${resultKill.stderr.toString()}');
}

void _killLinuxProcess(String fileProcess) {
  var resultKill = Process.runSync(
      'bash', ['-c', 'kill -9 \$(ps faux | grep -w \'$fileProcess\' | grep -vw grep | awk \'{ print \$2 }\')'],
      runInShell: true);

  if (resultKill.stdout.toString().isNotEmpty) print('taskkill result: ${resultKill.stdout}');
  if (resultKill.stderr.toString().isNotEmpty) print('Error taskkill: ${resultKill.stderr.toString()}');
}

void _clean(ArgResults args) {
  print('NUCLEOID START CLEAN:');
  try {
    final buildDir = Directory(_buildDir);
    if (buildDir.existsSync()) buildDir.deleteSync(recursive: true);

    final tempDir = Directory(_buildTempDir);
    if (tempDir.existsSync()) tempDir.deleteSync(recursive: true);

    final nucleoidDir = Directory(nucleoid);
    if (nucleoidDir.existsSync()) nucleoidDir.deleteSync(recursive: true);

    print('NUCLEOID COMPLETE CLEAN.');
  } catch (e) {
    print('NUCLEOID ERROR CLEAN: $e');
  }
}

void _copyAssets(Directory dir, YamlList list) {
  list.forEach((asset) {
    print('copy assets: $asset');

    var dirElement = Directory(asset);
    var fileElement = File(asset);

    if (dirElement.existsSync()) {
      copyPathSync(dirElement.path, '${dir.path}${Platform.pathSeparator}$asset');
    } else if (fileElement.existsSync()) {
      var dirElement = Directory('${dir.path}${Platform.pathSeparator}${fileElement.parent.path}');

      if (!dirElement.existsSync()) dirElement.createSync(recursive: true);

      fileElement.copySync('${dir.path}${Platform.pathSeparator}$asset');
    }
  });
}

Future<void> _buildScripts(Directory dir, YamlList list) async {
  await Future.forEach(list, (script) async {
    if (script is String) {
      print('build scripts: $script');

      var fileScript = File(script);

      if (fileScript.existsSync()) {
        await JavascriptData.dart2js(fileScript, dir.path);
      }
    } else {
      print('error build scripts: $script');
    }
  });
}
