import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mova/src/constants/app_sizes.dart';

import '../../../widgets/custom_linear_gradient.dart';
import '../../../widgets/onboarding_text_description.dart';
import '../../../widgets/page_indicators.dart';

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
                      children: const [
                        OnboardingTextDescription(
                          title: 'Welcome to Mova',
                          description:
                              'The best movie streaming app of the century\nto make your days great!',
                        ),
                        OnboardingTextDescription(
                          title: 'A new world of Movies',
                          description:
                              'Discover how you can stream\nin other way!',
                        ),
                        OnboardingTextDescription(
                          title: 'Movies, Shows & More',
                          description:
                              'We have a tons of movies, shows\nanimes, drame waiting for you!',
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
                        onPressed: () {},
                        child: const Text('Get Started'),
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
