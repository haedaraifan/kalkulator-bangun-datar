import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'package:luas_bangun_datar/utils/AppColors.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Get.offNamed("/home")
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Text("ini splash screen"),
      ),
    );
  }
}