// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    LetYouInRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LetYouInScreen(),
      );
    },
    SignUpWithPasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignUpWithPasswordScreen(),
      );
    },
    FillProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FillProfileScreen(),
      );
    },
    MovieDetailRoute.name: (routeData) {
      final args = routeData.argsAs<MovieDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MovieDetailScreen(
          key: args.key,
          movie: args.movie,
        ),
      );
    },
    VideoPlayerRoute.name: (routeData) {
      final args = routeData.argsAs<VideoPlayerRouteArgs>(
          orElse: () => const VideoPlayerRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: VideoPlayerScreen(
          key: args.key,
          videoKey: args.videoKey,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    PopularMoviesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PopularMoviesScreen(),
      );
    },
    TopRatedMoviesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TopRatedMoviesScreen(),
      );
    },
    UpcomingMoviesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UpcomingMoviesScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [LetYouInScreen]
class LetYouInRoute extends PageRouteInfo<void> {
  const LetYouInRoute({List<PageRouteInfo>? children})
      : super(
          LetYouInRoute.name,
          initialChildren: children,
        );

  static const String name = 'LetYouInRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignUpWithPasswordScreen]
class SignUpWithPasswordRoute extends PageRouteInfo<void> {
  const SignUpWithPasswordRoute({List<PageRouteInfo>? children})
      : super(
          SignUpWithPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpWithPasswordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FillProfileScreen]
class FillProfileRoute extends PageRouteInfo<void> {
  const FillProfileRoute({List<PageRouteInfo>? children})
      : super(
          FillProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'FillProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MovieDetailScreen]
class MovieDetailRoute extends PageRouteInfo<MovieDetailRouteArgs> {
  MovieDetailRoute({
    Key? key,
    required Movie movie,
    List<PageRouteInfo>? children,
  }) : super(
          MovieDetailRoute.name,
          args: MovieDetailRouteArgs(
            key: key,
            movie: movie,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieDetailRoute';

  static const PageInfo<MovieDetailRouteArgs> page =
      PageInfo<MovieDetailRouteArgs>(name);
}

class MovieDetailRouteArgs {
  const MovieDetailRouteArgs({
    this.key,
    required this.movie,
  });

  final Key? key;

  final Movie movie;

  @override
  String toString() {
    return 'MovieDetailRouteArgs{key: $key, movie: $movie}';
  }
}

/// generated route for
/// [VideoPlayerScreen]
class VideoPlayerRoute extends PageRouteInfo<VideoPlayerRouteArgs> {
  VideoPlayerRoute({
    Key? key,
    String? videoKey,
    List<PageRouteInfo>? children,
  }) : super(
          VideoPlayerRoute.name,
          args: VideoPlayerRouteArgs(
            key: key,
            videoKey: videoKey,
          ),
          initialChildren: children,
        );

  static const String name = 'VideoPlayerRoute';

  static const PageInfo<VideoPlayerRouteArgs> page =
      PageInfo<VideoPlayerRouteArgs>(name);
}

class VideoPlayerRouteArgs {
  const VideoPlayerRouteArgs({
    this.key,
    this.videoKey,
  });

  final Key? key;

  final String? videoKey;

  @override
  String toString() {
    return 'VideoPlayerRouteArgs{key: $key, videoKey: $videoKey}';
  }
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PopularMoviesScreen]
class PopularMoviesRoute extends PageRouteInfo<void> {
  const PopularMoviesRoute({List<PageRouteInfo>? children})
      : super(
          PopularMoviesRoute.name,
          initialChildren: children,
        );

  static const String name = 'PopularMoviesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TopRatedMoviesScreen]
class TopRatedMoviesRoute extends PageRouteInfo<void> {
  const TopRatedMoviesRoute({List<PageRouteInfo>? children})
      : super(
          TopRatedMoviesRoute.name,
          initialChildren: children,
        );

  static const String name = 'TopRatedMoviesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UpcomingMoviesScreen]
class UpcomingMoviesRoute extends PageRouteInfo<void> {
  const UpcomingMoviesRoute({List<PageRouteInfo>? children})
      : super(
          UpcomingMoviesRoute.name,
          initialChildren: children,
        );

  static const String name = 'UpcomingMoviesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnboardingScreen]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
