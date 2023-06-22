import 'package:audioplayers/audioplayers.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  static AudioPlayer player = AudioPlayer();

  Future<void> playIntroSound() async {
    player.setSourceAsset('sounds/sound-intro.mp3');
    player.play;
  }

  @override
  void initState() {
    super.initState();
    //  playIntroSound();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          height: 70,
        ),
      ),
      // .animate().scale(duration: const Duration(milliseconds: 300))
    );
  }
}
