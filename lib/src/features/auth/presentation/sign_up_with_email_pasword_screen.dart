// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';

import 'package:mova/src/features/auth/shared/providers.dart';

import '../../../utils/common_import.dart';
import '../application/auth_notifier.dart';
import '../infrastructure/validation_service.dart';
import 'widgets/common_textfield.dart';

@RoutePage()
class SignUpWithPasswordScreen extends ConsumerStatefulWidget {
  const SignUpWithPasswordScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SignUpWithPasswordScreenState();
}

class _SignUpWithPasswordScreenState
    extends ConsumerState<SignUpWithPasswordScreen> {
  final _focusNode = FocusNode();
  final bool _hasFocus = false;

  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _showPassword = true;
  bool _isLoggedIn = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AuthState>(
      authNotifier,
      (previous, next) {
        next.maybeWhen(
          orElse: () {},
          failure: (authFailure) {
            authFailure.maybeMap(
              orElse: () {},
              failure: (value) {
                Flushbar(
                  message: value.message,
                  icon: const Icon(
                    Icons.info,
                    color: AppColors.alertError,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  backgroundColor: AppColors.bgRed,
                  messageColor: AppColors.alertError,
                  duration: const Duration(seconds: 2),
                  margin: const EdgeInsets.all(16),
                ).show(context);
              },
            );
          },
        );
      },
    );
    return ProgressHUD(
      barrierEnabled: true,
      borderWidth: 0,
      child: Builder(builder: (ctx) {
        return Scaffold(
          appBar: AppBar(),
          body: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        width: 50,
                        height: 50,
                      ),
                      gapH20,
                      Text(
                        _isLoggedIn
                            ? 'Login to Your Account'
                            : 'Create your account',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      gapH30,
                      CommonTextFormField(
                        controller: _emailController,
                        hasFocus: _hasFocus,
                        focusNode: _focusNode,
                        prefixIcon: Image.asset('assets/icons/message.png'),
                        validator: ValidationService.validateEmail,
                        hintText: 'Email',
                      ),
                      gapH20,
                      CommonTextFormField(
                        controller: _passwordController,
                        hasFocus: _hasFocus,
                        validator: ValidationService.validatePassword,
                        obscureText: _showPassword,
                        prefixIcon: Image.asset('assets/icons/lock.png'),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              _showPassword = !_showPassword;
                            });
                          },
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset('assets/icons/hide_close.png'),
                        ),
                        hintText: 'Password',
                      ),
                      /* Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 4),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Checkbox(
                                            value: _authNotifier.getIsRememberMe,
                                            onChanged: (v) {
                                              setState(() {
                                                _authNotifier.toggleRemeberMe(v!);
                                              });
                                            },
                                          ),
                                          const SizedBox(width: 2),
                                          Text(
                                            'Remember me',
                                            style: Theme.of(context).textTheme.bodyText1,
                                          )
                                        ],
                                      ),
                                    ), */
                      gapH20,
                      ElevatedButton(
                        onPressed: () async {
                          FocusScope.of(context).unfocus();
                          if (_formKey.currentState!.validate()) {
                            final progress = ProgressHUD.of(ctx);
                            progress?.show();

                            _isLoggedIn
                                ? await ref
                                    .read(authNotifier.notifier)
                                    .signInWithEmailAndPassword(
                                      _emailController.text,
                                      _passwordController.text,
                                    )
                                    .then((value) => progress?.dismiss())
                                : await ref
                                    .read(authNotifier.notifier)
                                    .signUpWithEmailAndPassword(
                                      _emailController.text,
                                      _passwordController.text,
                                    )
                                    .then((value) => progress?.dismiss());
                          }
                        },
                        child: Text(_isLoggedIn ? 'Sign in' : 'Sign up'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Divider(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                'Or continue with',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                      fontSize: 16,
                                    ),
                              ),
                            ),
                            const Divider(),
                          ],
                        ),
                      ),
                      ElevatedButton.icon(
                        onPressed: () async {
                          final progress = ProgressHUD.of(ctx);
                          progress?.show();
                          await ref
                              .read(authNotifier.notifier)
                              .signUpWithGoogle()
                              .then((value) => progress!.dismiss());
                        },
                        icon: Image.asset('assets/icons/google.png'),
                        label: const Text(''),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context)
                                .inputDecorationTheme
                                .fillColor!),
                      ),

                      /*     
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _SocialIconSignUp(
                            onTap: () async {
                              debugPrint('Log in with Facebook');
                              await ref
                                  .read(authNotifier.notifier)
                                  .signInWithFacebook();
                            },
                            imageUrl: 'assets/icons/facebook.png',
                          ),
                          _SocialIconSignUp(
                            onTap: () async {
                              final progress = ProgressHUD.of(ctx);
                              progress?.show();
                              await ref
                                  .read(authNotifier.notifier)
                                  .signUpWithGoogle()
                                  .then((value) => progress!.dismiss());
                            },
                            imageUrl: 'assets/icons/google.png',
                          ),
                          Consumer(
                            builder: (context, ref, _) {
                              final state = ref.watch(appThemeProvider);

                              return _SocialIconSignUp(
                                onTap: () {
                                  debugPrint('Log in with Apple: $state');
                                },
                                imageUrl: state == AppTheme.darkTheme()
                                    ? 'assets/icons/apple.png'
                                    : 'assets/icons/apple-dark.png',
                              );
                            },
                          ),
                        ],
                      ),
                      */

                      const SizedBox(height: 20),
                      _AlreadyHaveAnAccount(
                        isLoggedIn: _isLoggedIn,
                        onTap: () {
                          setState(() {
                            _isLoggedIn = !_isLoggedIn;
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

class _AlreadyHaveAnAccount extends StatelessWidget {
  final bool isLoggedIn;
  final VoidCallback onTap;
  const _AlreadyHaveAnAccount({
    Key? key,
    required this.isLoggedIn,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
            isLoggedIn ? "Don’t have an account?" : 'Already have an account?'),
        const SizedBox(width: 4),
        InkWell(
          onTap: onTap,
          child: Text(
            isLoggedIn ? 'Sign up' : 'Sign In',
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: AppColors.primary,
            ),
          ),
        )
      ],
    );
  }
}

class _SocialIconSignUp extends StatelessWidget {
  final void Function() onTap;
  final String imageUrl;
  const _SocialIconSignUp({
    Key? key,
    required this.onTap,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Theme.of(context).inputDecorationTheme.fillColor!,
          ),
          color: Theme.of(context).inputDecorationTheme.fillColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Image.asset(
          imageUrl,
        ),
      ),
    );
  }
}
