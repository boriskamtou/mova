import 'package:animations/animations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../auth/shared/providers.dart';
import '../../../set_language/shared/providers.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../../routing/app_router.dart';
import '../../../../utils/common_import.dart';

import '../../../core/shared/providers.dart';
import '../../../theme/application/app_theme_notifier.dart';

class ProfileTab extends ConsumerStatefulWidget {
  const ProfileTab({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfileTabState();
}

class _ProfileTabState extends ConsumerState<ProfileTab> {
  String? _userEmail = '';
  String? _username = '';
  String? _nickName = '';
  String? _imageUrl = '';
  String? _phoneNumber = '';
  String? _gender = '';
  String? _appVersion = '';
  bool? _isDarkMode = true;

  Future<void> _initializeInfos() async {
    final userEmail =
        await ref.read(userDataNotifierProvider.notifier).getUserEmail();
    final userName =
        await ref.read(userDataNotifierProvider.notifier).getUserName();

    final nickName =
        await ref.read(userDataNotifierProvider.notifier).getUserNickName();
    final photoUrl =
        await ref.read(userDataNotifierProvider.notifier).getUserPhotoUrl();

    final phoneNumber =
        await ref.read(userDataNotifierProvider.notifier).getUserPhoneNumber();
    final gender =
        await ref.read(userDataNotifierProvider.notifier).getUserGender();
    final isDarkMode =
        await ref.read(appThemeProvider.notifier).getPreferedThemeMode();

    final appVersion = await ref
        .read(userPreferenceNotifierProvider.notifier)
        .getUserAppVersion();
    setState(() {
      _userEmail = userEmail;
      _username = userName;
      _imageUrl = photoUrl;
      _isDarkMode = isDarkMode;
      _phoneNumber = phoneNumber;
      _nickName = nickName;
      _gender = gender;
      _appVersion = appVersion;
    });
  }

  @override
  void initState() {
    _initializeInfos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final languageState = ref.watch(languageNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/images/logo.png',
            width: 28,
          ),
        ),
        title: Text(
          l10n.profileTabProfileLabel,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 20,
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
                  image: _imageUrl == null ||
                          _imageUrl!.isEmpty ||
                          _imageUrl! == ''
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
                AutoRouter.of(context).push(
                  EditProfileRoute(
                    fullName: _username,
                    phoneNumber: _phoneNumber,
                    email: _userEmail,
                    gender: _gender,
                    nickName: _nickName,
                    imageUrl: _imageUrl,
                  ),
                );
              },
              leading: Image.asset(
                'assets/icons/profil.png',
                color: Theme.of(context).iconTheme.color,
              ),
              title: Text(
                l10n.profileTabEditProfileLabel,
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
              onTap: () => AutoRouter.of(context).push(const LanguageRoute()),
              leading: Image.asset(
                'assets/icons/language.png',
                color: Theme.of(context).iconTheme.color,
              ),
              title: Text(
                l10n.profileTabLanguageLabel,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontSize: 16),
              ),
              trailing: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    languageState.value == const Locale('en') ? '(EN)' : '(FR)',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  gapW10,
                  const Icon(Icons.arrow_forward_ios_rounded, size: 18),
                ],
              ),
            ),
            ListTile(
              leading: Image.asset(
                'assets/icons/show.png',
                color: Theme.of(context).iconTheme.color,
              ),
              title: Text(
                l10n.profileTabThemeModeLabel,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontSize: 16),
              ),
              trailing: Switch.adaptive(
                value: _isDarkMode!,
                activeColor: Theme.of(context).primaryColor,
                onChanged: (value) async {
                  await ref
                      .read(appThemeProvider.notifier)
                      .storeUserPreferedThemeMode(value);
                  setState(() {
                    _isDarkMode = value;
                    ref.read(appThemeProvider.notifier).toggleTheme();
                  });
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
                          title: Text(l10n.profileTabMovieDescriptionLabel),
                          subtitle: Text(_appVersion!),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          l10n.profileTabMadeByLabel,
                          style: const TextStyle(
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
                l10n.profileTabAboutLabel,
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
                l10n.profileTabLogoutLabel,
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
