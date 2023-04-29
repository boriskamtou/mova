import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mova/src/features/movies/home/presentation/home_screen.dart';
import 'package:mova/src/features/onboarding/presentation/onboarding_screen.dart';
import 'package:mova/src/features/splash/presentation/splash_screen.dart';

enum AppRoute {
  splashScreen,
  intro,
  homeScreen,
}

final appRouterProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      initialLocation: '/home',
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
        GoRoute(
          path: '/home',
          name: AppRoute.homeScreen.name,
          builder: (context, state) => const HomeScreen(),
        ),
      ],
    );
  },
);
