import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luas_bangun_datar/controllers/LuasController.dart';
import 'package:luas_bangun_datar/utils/AppColors.dart';
import 'package:luas_bangun_datar/utils/MyAlertDialog.dart';
import 'package:luas_bangun_datar/utils/MyElevatedButton.dart';
import 'package:luas_bangun_datar/utils/MyText.dart';
import 'package:luas_bangun_datar/utils/MyTextField.dart';

class LuasSegitiga extends GetView<LuasController> {
  const LuasSegitiga({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController? ctrAlas = TextEditingController();
    TextEditingController? ctrTinggi = TextEditingController();

    Widget myColumn() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MyText(value: "1/2 x alas x tinggi", fontSize: 16),
          const SizedBox(width: double.infinity, height: 10),
          MyTextField(label: "alas (cm)", ctr: ctrAlas!),
          MyTextField(label: "tinggi (cm)", ctr: ctrTinggi!),
          const MyText(value: "Hasil :", fontSize: 18, fontWeight: FontWeight.bold),
          Expanded(
            child: Obx(
              () => MyText(value: "${controller.luasSegitiga.value.toStringAsFixed(2)}cm²")
            ),
          ),
          MyElevatedButton(
            buttonText: "Hitung",
            onPressed: () {
              ctrAlas!.text.isNotEmpty && ctrTinggi!.text.isNotEmpty ?
              controller.hitungLuasSegitiga(double.parse(ctrAlas!.text.toString()), double.parse(ctrTinggi!.text.toString())) :
              MyAlertDialog().showEmptyDialog(context);
            }
          ),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondaryColor,
        title: const MyText(value: "Segitiga", fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
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