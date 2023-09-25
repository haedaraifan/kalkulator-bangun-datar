import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luas_bangun_datar/utils/MyGridViewButton.dart';

class ListBangunDatar extends StatelessWidget {
  const ListBangunDatar({super.key});

  List<Widget> myButtonList() {
    return [
      MyGridViewButton(
        text: "Lingkaran",
        icon: "assets/svgs/lingkaran.svg",
        onTab: () => Get.toNamed("/lingkaran")
      ),
      MyGridViewButton(
        text: "Persegi",
        icon: "assets/svgs/persegi.svg",
        onTab: () => Get.toNamed("/persegi")
      ),
      MyGridViewButton(
        text: "Persegi panjang",
        icon: "assets/svgs/persegi_panjang.svg",
        onTab: () => Get.toNamed("/persegi-panjang")
      ),
      MyGridViewButton(
        text: "Segitiga",
        icon: "assets/svgs/segitiga.svg",
        onTab: () => Get.toNamed("/segitiga")
      ),
      MyGridViewButton(
        text: "Jajar genjang",
        icon: "assets/svgs/jajar_genjang.svg",
        onTab: () => Get.toNamed("/jajar-genjang")
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
        ),
        children: myButtonList(),
      ),
    );
  }
}