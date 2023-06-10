import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/features/auth/shared/providers.dart';
import 'package:mova/src/features/core/shared/providers.dart';
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

  void _initialize() async {
    _userEmail = await ref.read(authNotifier.notifier).getUserEmail();
    _username = await ref.read(authNotifier.notifier).getUsername();
    _imageUrl = await ref.read(authNotifier.notifier).getUserImageUrl();

    _isDarkMode =
        await ref.read(userPreferenceLocalServiceProvider).getUserThemeMode();
    setState(() {});
  }

  @override
  void initState() {
    _initialize();
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: AppSizes.p20),
              child: CircleAvatar(
                backgroundColor: AppColors.grey,
                radius: 50,
                backgroundImage: CachedNetworkImageProvider(_imageUrl!),
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
              leading: Icon(
                Icons.logout_outlined,
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
