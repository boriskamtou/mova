import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavigationRouterNotifier extends StateNotifier<int> {
  BottomNavigationRouterNotifier() : super(0);

  void resetTabState() => state = 0;

  int get currentIndex => state;

  dynamic changeTab(int index) {
    state = index;
  }
}
