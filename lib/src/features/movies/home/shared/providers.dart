import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/movies/home/application/bottom_navigation_router_notifier.dart';

final bottomNavigationRouterNotifierProvider =
    StateNotifierProvider.autoDispose<BottomNavigationRouterNotifier, int>(
        (ref) {
  return BottomNavigationRouterNotifier();
});
