import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RiveAnimation.network(
          "https://cdnl.iconscout.com/lottie/premium/thumb/sunny-and-cloudy-6255978-5188063.mp4"),
    );
  }
}
