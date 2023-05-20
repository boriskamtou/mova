import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import 'firebase_options.dart';
import 'src/app_widget.dart';

class LoggerProvider extends ProviderObserver {
  var log = Logger();
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    if (newValue is StateController<int>) {
      log.i(
        '[${provider.name ?? provider.runtimeType}] value: ${newValue.state}',
      );
    }
  }
}

Future<void> main() async {
  // Setup firebase initialization
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Device orientation
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(
    ProviderScope(
      observers: [
        LoggerProvider(),
      ],
      child: const AppWidget(),
    ),
  );
}
