import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme/presentation/app_colors.dart';

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
    _controller = PageController();
    currentIndex = 0;
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
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(.15),
                    Colors.black.withOpacity(.3),
                    Colors.black.withOpacity(.49),
                  ],
                  begin: Alignment.topCenter,
                ),
              ),
            ),
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
                        _OnboardingTextDescription(
                          title: 'Welcome to Mova',
                          description:
                              'The best movie streaming app of the century\nto make your days great!',
                        ),
                        _OnboardingTextDescription(
                          title: 'A new world of Movies',
                          description:
                              'Discover how you can stream\nin other way!',
                        ),
                        _OnboardingTextDescription(
                          title: 'Movies, Shows & More',
                          description:
                              'We have a tons of movies, shows\nanimes, drame waiting for you!',
                        ),
                      ],
                    ),
                  ),
                  _PageIndicators(
                    index: currentIndex,
                    currentIndex: currentIndex,
                  ),
                  const SizedBox(height: 25),
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

class _OnboardingTextDescription extends StatelessWidget {
  final String title;
  final String description;
  const _OnboardingTextDescription({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: GoogleFonts.urbanist(
            color: AppColors.white,
            fontSize: 32,
            fontWeight: FontWeight.w700,
          ),
        ).animate(delay: const Duration(milliseconds: 100)).fade().scale(),
        const SizedBox(height: 16),
        Text(
          description,
          textAlign: TextAlign.center,
          style: GoogleFonts.urbanist(
            color: AppColors.white,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ).animate(delay: const Duration(milliseconds: 100)).fade().scale(),
      ],
    );
  }
}

class _PageIndicators extends StatelessWidget {
  final int index;
  final int currentIndex;
  const _PageIndicators({
    Key? key,
    required this.index,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        3,
        (index) => AnimatedContainer(
          height: 10,
          margin: const EdgeInsets.only(right: 8),
          width: currentIndex == index ? 25 : 10,
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(
            color: currentIndex == index ? AppColors.primary : AppColors.white,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
