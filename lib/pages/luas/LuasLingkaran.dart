import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luas_bangun_datar/controllers/LuasController.dart';
import 'package:luas_bangun_datar/utils/AppColors.dart';
import 'package:luas_bangun_datar/utils/MyAlertDialog.dart';
import 'package:luas_bangun_datar/utils/MyElevatedButton.dart';
import 'package:luas_bangun_datar/utils/MyText.dart';
import 'package:luas_bangun_datar/utils/MyTextField.dart';

class LuasLingkaran extends StatefulWidget {
  const LuasLingkaran({super.key});

  @override
  State<LuasLingkaran> createState() => _LuasLingkaranState();
}

class _LuasLingkaranState extends State<LuasLingkaran> {
  TextEditingController? ctrJariJari = TextEditingController();
  final LuasController controller = Get.put(LuasController()); 

  Widget myColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MyText(value: "π x r²", fontSize: 16),
        const SizedBox(width: double.infinity, height: 10),
        MyTextField(label: "jari-jari (cm)", ctr: ctrJariJari!),
        const MyText(value: "Hasil :", fontSize: 18, fontWeight: FontWeight.bold),
        Expanded(
          child: Obx(
            () => MyText(value: "${controller.luasLingkaran.value.toStringAsFixed(2)}cm²")
          )
        ),
        MyElevatedButton(
          buttonText: "Hitung",
          onPressed: () {
            ctrJariJari!.text.isNotEmpty ?
            controller.hitungLuasLingkaran(double.parse(ctrJariJari!.text.toString())) :
            MyAlertDialog().showEmptyDialog(context);
          }
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondaryColor,
        title: const MyText(value: "Lingkaran", fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
        leading: const BackButton(
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: myColumn(),
      ),
      backgroundColor: AppColors.backgroundColor,
    );
  }
}