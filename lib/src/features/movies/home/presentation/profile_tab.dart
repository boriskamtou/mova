import 'package:animations/animations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/auth/shared/providers.dart';
import 'package:mova/src/features/core/shared/providers.dart';
import 'package:mova/src/routing/app_router.dart';
import 'package:mova/src/utils/common_import.dart';

import '../../../theme/application/app_theme_notifier.dart';

class ProfileTab extends ConsumerStatefulWidget {
  const ProfileTab({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfileTabState();
}

class _ProfileTabState extends ConsumerState<ProfileTab> {
  String? _userEmail = '';
  String? _username = '';
  String? _imageUrl = '';
  bool? _isDarkMode = false;

  Future<void> _initializeInfos() async {
    final userEmail =
        await ref.read(userDataNotifierProvider.notifier).getUserEmail();
    final userName =
        await ref.read(userDataNotifierProvider.notifier).getUserName();
    final photoUrl =
        await ref.read(userDataNotifierProvider.notifier).getUserPhotoUrl();

    setState(() {
      _userEmail = userEmail;
      _username = userName;
      _imageUrl = photoUrl;
    });
  }

  @override
  void initState() {
    _initializeInfos();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/logo.png',
              width: 30,
            ),
          ),
        ),
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.only(bottom: 4),
              padding: const EdgeInsets.symmetric(vertical: AppSizes.p20),
              decoration: BoxDecoration(
                color: AppColors.grey,
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: _imageUrl == null || _imageUrl!.isEmpty
                      ? const AssetImage('assets/images/empty_pp.png')
                          as ImageProvider
                      : CachedNetworkImageProvider(_imageUrl!),
                ),
              ),
            ),
            Text(
              _username ?? '',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontSize: 22,
                  ),
            ),
            gapH10,
            Text(
              _userEmail ?? '-/-',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
            ),
            gapH16,
            const Divider(),
            ListTile(
              onTap: () {
                AutoRouter.of(context).push(const FillProfileRoute());
              },
              leading: Image.asset(
                'assets/icons/profil.png',
                color: Theme.of(context).iconTheme.color,
              ),
              title: Text(
                'Edit Profile',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontSize: 16,
                    ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
              ),
            ),
            ListTile(
              leading: Image.asset(
                'assets/icons/language.png',
                color: Theme.of(context).iconTheme.color,
              ),
              title: Text(
                'Language',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontSize: 16,
                    ),
              ),
              trailing: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '(EN)',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  gapW10,
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Image.asset(
                'assets/icons/show.png',
                color: Theme.of(context).iconTheme.color,
              ),
              title: Text(
                'Dark Mode',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontSize: 16,
                    ),
              ),
              trailing: Switch.adaptive(
                value: _isDarkMode ?? false,
                activeColor: Theme.of(context).primaryColor,
                onChanged: (value) async {
                  ref
                      .read(userPreferenceLocalServiceProvider)
                      .storePrefMode(value);
                  _isDarkMode = await ref
                      .read(userPreferenceLocalServiceProvider)
                      .getUserThemeMode();
                  await ref.read(appThemeProvider.notifier).toggleTheme(value);
                  setState(() {});
                },
              ),
            ),
            ListTile(
              onTap: () {
                showModal(
                  context: context,
                  configuration: const FadeScaleTransitionConfiguration(),
                  builder: (context) => AlertDialog(
                    title: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Image.asset(
                            'assets/images/logo.png',
                            width: 60,
                          ),
                          title: const Text('Mova - Streaming App'),
                          subtitle: const Text('0.1.0'),
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          'Made by WCS',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              leading: Image.asset(
                'assets/icons/about.png',
                color: Theme.of(context).iconTheme.color,
              ),
              title: Text(
                'About',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontSize: 16,
                    ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
            ListTile(
              onTap: () => ref.read(authNotifier.notifier).signOut(),
              leading: Image.asset(
                'assets/icons/logout.png',
                color: Theme.of(context).iconTheme.color,
              ),
              title: Text(
                'Logout',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontSize: 16,
                    ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
