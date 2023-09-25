import 'package:get/get.dart';
import 'package:luas_bangun_datar/bindings/LuasBinding.dart';
import 'package:luas_bangun_datar/pages/home/Home.dart';
import 'package:luas_bangun_datar/pages/luas/LuasJajarGenjang.dart';
import 'package:luas_bangun_datar/pages/luas/LuasLingkaran.dart';
import 'package:luas_bangun_datar/pages/luas/LuasPersegi.dart';
import 'package:luas_bangun_datar/pages/luas/LuasPersegiPanjang.dart';
import 'package:luas_bangun_datar/pages/luas/LuasSegitiga.dart';
import 'package:luas_bangun_datar/pages/splash_screen/SplashScreen.dart';

List<GetPage> pageRoutes = [
  GetPage(
    name: "/",
    page: () => const SplashScreenPage()
  ),
  GetPage(
    name: "/home",
    page: () => const HomePage()
  ),
  GetPage(
    name: "/lingkaran",
    page: () => const LuasLingkaran(),
    binding: LuasBinding()
  ),
  GetPage(
    name: "/persegi",
    page: () => const LuasPersegi(),
    binding: LuasBinding()
  ),
  GetPage(
    name: "/persegi-panjang",
    page: () => const LuasPersegiPanjang(),
    binding: LuasBinding()
  ),
  GetPage(
    name: "/segitiga",
    page: () => const LuasSegitiga(),
    binding: LuasBinding()
  ),
  GetPage(
    name: "/jajar-genjang",
    page: () => const LuasJajarGenjang(),
    binding: LuasBinding()
  ),
];