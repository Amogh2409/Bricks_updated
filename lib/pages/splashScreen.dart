// ignore_for_file: file_names

import 'package:brick/pages/HomePage.dart';
import 'package:brick/pages/gettingStarted.dart';
import 'package:brick/pages/registration.dart';
import 'package:brick/pages/scanPage.dart';
import 'package:brick/pages/settingsPage.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _width = 1;
  double _height = 1;

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 1)).then((_) {
      setState(() {
        _width = 5000;
        _height = 5000;
      });
    });

    Future.delayed(const Duration(seconds: 1)).then((_) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const Registration()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 4),
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            shape: (_height != 1500) ? BoxShape.rectangle : BoxShape.circle,
            gradient: const LinearGradient(colors: [
              Color(0xff21C998),
              Color(0xff067DF4),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          curve: Curves.decelerate,
          onEnd: () {},
        ),
      ),
    );
  }
}
// hello there 