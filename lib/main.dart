import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

import 'src/app.dart';

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

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ProviderScope(
      observers: [
        LoggerProvider(),
      ],
      child: const MyApp(),
    ),
  );
}
