// Deprecated, we used native splash instead
import 'dart:async';
import 'dart:ffi';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 20), () {
      Navigator.of(context).pushNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Expanded(
      child: Image(image: AssetImage(r'lib\media\logo.png')),
    ));
  }
}
