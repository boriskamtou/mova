import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/theme/application/app_theme_notifier.dart';
import 'package:mova/src/routing/app_router.dart';

import 'features/core/shared/providers.dart';

final initializationProvider = FutureProvider<Unit>((ref) async {
  // await ref.read(sembastProvider).init();
  ref.read(dioProvider).options = BaseOptions(
    connectTimeout: const Duration(seconds: 30),
    sendTimeout: const Duration(seconds: 30),
  );
  return unit;
});

class RouteObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    debugPrint('/${route.settings.name}');
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    debugPrint('/${route.settings.name}');
  }
}

class AppWidget extends ConsumerWidget {
  const AppWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(
      initializationProvider,
      (previous, next) {},
    );
    final appTheme = ref.watch(appThemeProvider);
    final appRouter = AppRouter();
    return MaterialApp.router(
      routerConfig: appRouter.config(
        navigatorObservers: () => [
          RouteObserver(),
        ],
      ),
      restorationScopeId: 'app',
      title: "Mova",
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
      ],
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context)!.appTitle,
      theme: appTheme.theme,
      builder: EasyLoading.init(),
    );
  }
}
