import 'package:auto_route/auto_route.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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

  bool _showPassword = false;

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
          loading: () {},
          authenticated: () {
            EasyLoading.showSuccess("Success");
          },
          failure: (authFailure) {
            authFailure.maybeMap(
              orElse: () {},
              failure: (value) {
                EasyLoading.dismiss();
                EasyLoading.showError(authFailure.message,
                    duration: const Duration(seconds: 3));
              },
            );
          },
        );
      },
    );
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
                    'Create your account',
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
                      // context.go('/sign_up_with_password');*
                      FocusScope.of(context).unfocus();
                      if (_formKey.currentState!.validate()) {
                        await ref
                            .read(authNotifier.notifier)
                            .signUpWithEmailAndPassword(
                              _emailController.text,
                              _passwordController.text,
                            );
                      }
                    },
                    child: const Text('Sign up'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Divider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'Or continue with',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                        const Divider(),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _SocialIconSignUp(
                        onTap: () {},
                        imageUrl: 'assets/icons/facebook.png',
                      ),
                      _SocialIconSignUp(
                        onTap: () {
                          ref.read(authNotifier.notifier).signUpWithGoogle();
                        },
                        imageUrl: 'assets/icons/google.png',
                      ),
                      _SocialIconSignUp(
                        onTap: () {},
                        imageUrl: 'assets/icons/apple-dark.png',
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
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
                  )
                ],
              ),
            ),
          ),
        ),
      ),
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
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      splashColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: const Color(0xFFEEEEEE),
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: IconButton(
          onPressed: () {},
          splashColor: Colors.transparent,
          padding: EdgeInsets.zero,
          icon: Image.asset(imageUrl),
        ),
      ),
    );
  }
}
