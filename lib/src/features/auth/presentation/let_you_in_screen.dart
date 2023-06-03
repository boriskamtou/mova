import 'package:auto_route/auto_route.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mova/src/features/auth/application/auth_notifier.dart';
import 'package:mova/src/features/auth/shared/providers.dart';
import 'package:mova/src/routing/app_router.dart';
import 'package:mova/src/utils/common_import.dart';

@RoutePage()
class LetYouInScreen extends StatefulHookConsumerWidget {
  const LetYouInScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LetYouInScreenState();
}

class _LetYouInScreenState extends ConsumerState<LetYouInScreen> {
  @override
  Widget build(BuildContext context) {
    final authenticator = ref.watch(authNotifier.notifier);

    ref.listen<AuthState>(
      authNotifier,
      (prev, next) {
        next.maybeWhen(
          orElse: () {},
          loading: () => EasyLoading.show(),
          authenticated: () => EasyLoading.dismiss(),
          failure: (_) {
            _.maybeMap(
              orElse: () {},
              failure: (value) {
                EasyLoading.dismiss();
                EasyLoading.showError(_.message,
                    duration: const Duration(seconds: 3));
              },
            );
          },
        );
      },
    );

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            const Spacer(),
            const SizedBox(height: 16),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    'assets/images/sign_in_light.png',
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Sign Up',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _SocialButton(
                          imageUrl: 'assets/icons/facebook.png',
                          label: 'Continue with Facebook',
                          onPressed: () {},
                        ),
                        const SizedBox(height: 15),
                        _SocialButton(
                          imageUrl: 'assets/icons/google.png',
                          label: 'Continue with Google',
                          onPressed: () {
                            authenticator.signUpWithGoogle();
                          },
                        ),
                        const SizedBox(height: 15),
                        _SocialButton(
                          imageUrl: 'assets/icons/apple-dark.png',
                          label: 'Continue with Apple',
                          onPressed: () {},
                        ),
                        const SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Divider(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                'Or',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.normal,
                                      color: const Color(0xFF616161),
                                    ),
                              ),
                            ),
                            const Divider(),
                          ],
                        ),
                        const SizedBox(height: 24),
                        ElevatedButton(
                          onPressed: () {
                            context.pushRoute(const SignUpWithPasswordRoute());
                          },
                          child: const Text('Continue with Password'),
                        ),
                        const SizedBox(height: 14),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Already have an account?'),
                            const SizedBox(width: 4),
                            InkWell(
                              onTap: () {},
                              child: const Text(
                                'Sign In',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.primary,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SocialButton extends StatelessWidget {
  final String imageUrl;
  final String label;
  final void Function() onPressed;
  const _SocialButton({
    Key? key,
    required this.imageUrl,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: Image.asset(imageUrl),
          ),
          const SizedBox(width: 10),
          Text(label),
        ],
      ),
    );
  }
}
