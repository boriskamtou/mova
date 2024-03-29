import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/theme/presentation/app_themes.dart';

import 'features/auth/application/auth_notifier.dart';
import 'features/auth/shared/providers.dart';
import 'features/core/shared/providers.dart';
import 'features/set_language/shared/providers.dart';
import 'features/theme/application/app_theme_notifier.dart';
import 'l10n/app_localizations.dart';
import 'routing/app_router.dart';

final initializationProvider = FutureProvider<Unit>((ref) async {
  await ref.read(sembastProvider).database;
  ref.read(dioProvider).options = BaseOptions(
      // connectTimeout: const Duration(seconds: 30),
      // sendTimeout: const Duration(seconds: 30),
      );
  await ref.read(appThemeProvider.notifier).toggleTheme();
  await ref.read(languageNotifierProvider.notifier).getPreferedLanguage();
  final auth = ref.watch(authNotifier.notifier);
  auth.checkAuthStatus();
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

final _appRouter = AppRouter();

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
    ref.listen<AuthState>(
      authNotifier,
      (previous, next) {
        next.maybeWhen(
          orElse: () {},
          authenticated: () async {
            final hasFillProfile =
                await ref.watch(authNotifier.notifier).hasFillProfile() as bool;

            if (hasFillProfile) {
              return _appRouter.pushAndPopUntil(const HomeRoute(),
                  predicate: (route) => false);
            } else {
              return _appRouter.pushAndPopUntil(const FillProfileRoute(),
                  predicate: (route) => false);
            }
          },
          unauthenticated: () async {
            final hasSeenOnboarding = await ref
                .watch(userPreferenceLocalServiceProvider)
                .getHasSeenOnboardung() as bool;

            if (hasSeenOnboarding) {
              return _appRouter.pushAndPopUntil(const SignUpWithPasswordRoute(),
                  predicate: (route) => false);
            } else {
              return _appRouter.pushAndPopUntil(const OnboardingRoute(),
                  predicate: (route) => false);
            }
          },
        );
      },
    );
    final appTheme = ref.watch(appThemeProvider);
    final locale = ref.watch(languageNotifierProvider);
    return MaterialApp.router(
      routerConfig: _appRouter.config(
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
      locale: locale.value,
      supportedLocales: const [
        Locale('en', ''),
        Locale('fr', ''),
      ],
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context).appTitle,
      theme: appTheme,
      themeMode: ThemeMode.system,
      darkTheme: AppTheme.darkTheme(),
      builder: EasyLoading.init(),
    );
  }
}
