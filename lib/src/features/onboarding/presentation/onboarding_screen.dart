import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/constants/app_sizes.dart';
import 'package:mova/src/features/core/shared/providers.dart';
import 'package:mova/src/l10n/app_localizations.dart';
import 'package:mova/src/routing/app_router.dart';

import '../../../widgets/custom_linear_gradient.dart';
import '../../../widgets/onboarding_text_description.dart';
import '../../../widgets/page_indicators.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _controller;
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
    _controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return GestureDetector(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg.png'),
                  fit: BoxFit.cover,
                  scale: .4,
                ),
              ),
            ),
            const CustomLinearGradient(),
            Positioned(
              bottom: 24,
              left: 0,
              right: 0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 115,
                    width: double.infinity,
                    child: PageView(
                      controller: _controller,
                      onPageChanged: (index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      children: [
                        OnboardingTextDescription(
                          title: l10n.onboardingScreenWelcomeToMovaTitleOne,
                          description:
                              l10n.onboardingScreenWelcomeToMovaDescriptionOne,
                        ),
                        OnboardingTextDescription(
                          title: l10n.onboardingScreenWelcomeToMovaTitleTwo,
                          description:
                              l10n.onboardingScreenWelcomeToMovaDescriptionTwo,
                        ),
                        OnboardingTextDescription(
                          title: l10n.onboardingScreenWelcomeToMovaTitleThree,
                          description: l10n
                              .onboardingScreenWelcomeToMovaDescriptionThree,
                        ),
                      ],
                    ),
                  ),
                  PageIndicators(
                    index: currentIndex,
                    currentIndex: currentIndex,
                  ),
                  gapH25,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 48),
                    child: Consumer(builder: (context, ref, _) {
                      return ElevatedButton(
                        onPressed: () {
                          ref
                              .read(userPreferenceLocalServiceProvider)
                              .storeHasSeenOnboarding(true);
                          AutoRouter.of(context).pushAndPopUntil(
                              const SignUpWithPasswordRoute(),
                              predicate: (_) => false);
                        },
                        child: Text(l10n.onboardingScreenGetStartedLabel),
                      );
                    }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
