import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luas_bangun_datar/routes/PageRoutes.dart';
import 'package:luas_bangun_datar/utils/AppColors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      getPages: pageRoutes,
      title: 'Luas Bangun Datar',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}