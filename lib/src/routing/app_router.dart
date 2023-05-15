import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../features/movies/core/domain/entities/movie.dart';
import '../features/movies/core/presentation/movie_detail_screen.dart';
import '../features/movies/core/presentation/video_player.dart';
import '../features/movies/home/presentation/home_screen.dart';
import '../features/movies/popular_movies/presentation/popular_movies_screen.dart';
import '../features/movies/top_rated_movies/presentation/top_rated_movies_screen.dart';
import '../features/movies/upcomming_movie/presentation/up_coming_movie_screen.dart';
import '../features/splash/presentation/splash_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page),
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: PopularMoviesRoute.page),
        AutoRoute(page: MovieDetailRoute.page),
        AutoRoute(page: VideoPlayerRoute.page),
        AutoRoute(page: TopRatedMoviesRoute.page),
        AutoRoute(page: UpcomingMoviesRoute.page),
      ];
}
