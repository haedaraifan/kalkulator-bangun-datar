import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luas_bangun_datar/controllers/LuasController.dart';
import 'package:luas_bangun_datar/utils/AppColors.dart';
import 'package:luas_bangun_datar/utils/MyAlertDialog.dart';
import 'package:luas_bangun_datar/utils/MyElevatedButton.dart';
import 'package:luas_bangun_datar/utils/MyText.dart';
import 'package:luas_bangun_datar/utils/MyTextField.dart';

class LuasPersegi extends GetView<LuasController> {
  const LuasPersegi({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController? ctrSisi = TextEditingController();

    Widget myColumn() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MyText(value: "sisi x sisi", fontSize: 16),
          const SizedBox(width: double.infinity, height: 10),
          MyTextField(label: "sisi (cm)", ctr: ctrSisi),
          const MyText(value: "Hasil :", fontSize: 18, fontWeight: FontWeight.bold),
          Expanded(
            child: Obx(
              () => MyText(value: "${controller.luasPersegi.value.toStringAsFixed(2)}cm²")
            ),
          ),
          MyElevatedButton(
            buttonText: "Hitung",
            onPressed: () {
              ctrSisi.text.isNotEmpty ?
              controller.hitungLuasPersegi(double.parse(ctrSisi.text.toString())) :
              MyAlertDialog().showEmptyDialog(context);
            }
          ),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondaryColor,
        title: const MyText(value: "Persegi", fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
        leading: BackButton(
          onPressed: () => Get.back(),
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: myColumn()
      ),
      backgroundColor: AppColors.backgroundColor,
    );
  }
}