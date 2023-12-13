import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hadithe/Features/page_view_screen.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;
  goNext() => Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const PageViewScreen()),
      (route) => false);
  startDely() {
    _timer = Timer(const Duration(seconds: 5), () {
      goNext();
    });
  }

  @override
  void initState() {
    super.initState();
    startDely();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF230E4E),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            Lottie.asset('assets/animation/p]de.json')
          ],
        ),
      ),
    );
  }
}
