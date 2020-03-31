import 'package:flutter/material.dart';
import 'package:flutter_ty_mobile/core/internal/orientation_helper.dart';
import 'package:logging/logging.dart';

import 'env/config_reader.dart';
import 'env/environment.dart';
import 'features/main_app.dart';
import 'injection_container.dart' as di;

Future<void> mainCommon(String env) async {
  // Always call this if the main method is asynchronous
  WidgetsFlutterBinding.ensureInitialized();
  // Load the JSON config into memory
  await ConfigReader.initialize();

  switch (env) {
    case Environment.dev:
      print('Config Version: ${ConfigReader.getVersion()}');
      break;
  }

  // setup log
  _setupLogging();
  // setup orientation
  OrientationHelper.setPreferredOrientations();
  OrientationHelper.setEnabledSystemUIOverlays();
  // setup injector
  await di.init();
  // run application
  runApp(new MainApp());
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.loggerName}: [${rec.level.name}] ${rec.message}');
  });
}
