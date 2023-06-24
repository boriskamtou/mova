import 'dart:io';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:mova/src/features/core/shared/providers.dart';
import 'package:mova/src/features/movies/home/presentation/profile_tab.dart';
import 'package:upgrader/upgrader.dart';

import '../../../../utils/common_import.dart';
import '../shared/providers.dart';
import 'discovery_tab.dart';
import 'home_tab.dart';
import 'bookmark_tab.dart';

@RoutePage()
class HomeScreen extends StatefulHookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final autoSizeGroup = AutoSizeGroup();

  final _iconOutlineList = <String>[
    'assets/icons/home.png',
    'assets/icons/discovery.png',
    'assets/icons/bookmark.png',
    // 'assets/icons/download.png',
    'assets/icons/profile.png',
  ];

  final _iconSolidList = <String>[
    'assets/icons/home_solid.png',
    'assets/icons/discovery_solid.png',
    'assets/icons/bookmark_solid.png',
    // 'assets/icons/download_solid.png',
    'assets/icons/profile_solid.png',
  ];
  final titleList = <String>[
    'Home',
    'Discovery',
    'Bookmark',
    // 'Download',
    'Profile',
  ];

  static const List<Widget> _widgetOptions = <Widget>[
    HomeTab(),
    DiscoveryTab(),
    MyListTab(),
    // Text(
    //   'Index 3: Download',
    // ),
    ProfileTab(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bottomNavigationRouter =
        ref.watch(bottomNavigationRouterNotifierProvider.notifier);
    final state = ref.watch(bottomNavigationRouterNotifierProvider);
    return UpgradeAlert(
      upgrader: Upgrader(
        dialogStyle: Platform.isIOS
            ? UpgradeDialogStyle.cupertino
            : UpgradeDialogStyle.material,
        shouldPopScope: () => true,
        canDismissDialog: true,
        showReleaseNotes: false,
        willDisplayUpgrade: ({
          String? appStoreVersion,
          bool display = true,
          String? installedVersion,
          String? minAppVersion,
        }) async {
          ref
              .read(userPreferenceNotifierProvider.notifier)
              .saveUserAppVersion(installedVersion);
        },
        showIgnore: false,
        durationUntilAlertAgain: const Duration(seconds: 30),
        languageCode: 'en',
        /*       messages: UpgraderMessages(
          code: langCode,
        ), */
      ),
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: AnimatedBottomNavigationBar.builder(
          itemCount: _iconOutlineList.length,
          splashSpeedInMilliseconds: 0,
          backgroundColor:
              Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          tabBuilder: (int index, bool isActive) {
            final color =
                isActive ? AppColors.primary : AppColors.inactiveColor;
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  isActive ? _iconSolidList[index] : _iconOutlineList[index],
                  color: color,
                ),
                gapH4,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: AutoSizeText(
                    titleList[index],
                    maxLines: 1,
                    style: GoogleFonts.urbanist(
                      color: color,
                      fontWeight:
                          isActive ? FontWeight.w600 : FontWeight.normal,
                      fontSize: 14,
                    ),
                    group: autoSizeGroup,
                  ),
                )
              ],
            );
          },
          activeIndex: bottomNavigationRouter.currentIndex,
          gapLocation: GapLocation.none,
          leftCornerRadius: 14,
          rightCornerRadius: 14,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          onTap: (index) => bottomNavigationRouter.changeTab(index),
          shadow: const BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 1.5,
            spreadRadius: 0,
          ),
          elevation: 2,
        ),
        body: _widgetOptions.elementAt(state),
      ),
    );
  }
}
