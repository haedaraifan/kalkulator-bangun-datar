import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:luas_bangun_datar/pages/LuasJajarGenjang.dart';
import 'package:luas_bangun_datar/pages/LuasLingkaran.dart';
import 'package:luas_bangun_datar/pages/LuasPersegi.dart';
import 'package:luas_bangun_datar/pages/LuasPersegiPanjang.dart';
import 'package:luas_bangun_datar/pages/LuasSegitiga.dart';
import 'package:luas_bangun_datar/utils/AppColors.dart';
import 'package:luas_bangun_datar/utils/MyText.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget myTabBarItem(String svg) {
    return Tab(
      child: SizedBox(
        height: 24,
        child: SvgPicture.asset(svg),
      ),
    );
  }

  PreferredSizeWidget myAppBar() {
    return AppBar(
      backgroundColor: AppColors.secondaryColor,
      title: const MyText(value: "Luas bangun Datar", color: Colors.white, fontWeight: FontWeight.bold,),
      bottom: TabBar(
        tabs: [
          Tab(icon: Center(child: SvgPicture.asset("assets/svgs/lingkaran.svg", height: 18))),
          Tab(icon: SvgPicture.asset("assets/svgs/persegi.svg", height: 18)),
          Tab(icon: SvgPicture.asset("assets/svgs/persegi_panjang.svg", height: 18)),
          Tab(icon: SvgPicture.asset("assets/svgs/segitiga.svg", height: 18)),
          Tab(icon: SvgPicture.asset("assets/svgs/jajar_genjang.svg", height: 18)),
        ],
        indicator: BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius: BorderRadius.circular(4)
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        indicatorPadding: const EdgeInsets.only(left: 3, right: 3, bottom: 5, top: 3),
        labelColor: Colors.white,
      ),
    );
  }

  Widget myTabBarView() {
    return const TabBarView(
      children: [
        LuasLingkaran(),
        LuasPersegi(),
        LuasPersegiPanjang(),
        LuasSegitiga(),
        LuasJajarGenjang(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: myAppBar(),
        body: myTabBarView(),
      )
    );
  }
}