import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mova/src/features/onboarding/presentation/onboarding_screen.dart';
import 'package:mova/src/features/splash/presentation/splash_screen.dart';

enum AppRoute {
  splashScreen,
  intro,
}

final appRouterProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          name: AppRoute.splashScreen.name,
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          path: '/intro',
          name: AppRoute.intro.name,
          builder: (context, state) => const OnboardingScreen(),
        ),
      ],
    );
  },
);
