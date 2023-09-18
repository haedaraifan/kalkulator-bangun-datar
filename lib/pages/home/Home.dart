import 'package:flutter/material.dart';
import 'package:luas_bangun_datar/pages/home/ListBangunDatar.dart';
import 'package:luas_bangun_datar/pages/home/ListBangunRuang.dart';
import 'package:luas_bangun_datar/utils/AppColors.dart';
import 'package:luas_bangun_datar/utils/MyText.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  PreferredSizeWidget myAppBar() {
    return AppBar(
      backgroundColor: AppColors.secondaryColor,
      title: const MyText(value: "Kalkulator Luas", color: Colors.white, fontWeight: FontWeight.bold,),
      bottom: const TabBar(
        tabs: [
          Tab(child: MyText(value: "Bangun datar", fontSize: 20, color: Colors.white)),
          Tab(child: MyText(value: "Bangun ruang", fontSize: 20, color: Colors.white))
        ],
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorColor: AppColors.tertiaryColor,
        labelColor: Colors.white,
      ),
    );
  }

  Widget myTabBarView() {
    return const TabBarView(
      children: [
        ListBangunDatar(),
        ListBangunRuang()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: myAppBar(),
        body: myTabBarView(),
      )
    );
  }
}