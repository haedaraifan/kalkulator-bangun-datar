import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luas_bangun_datar/controllers/LuasController.dart';
import 'package:luas_bangun_datar/utils/AppColors.dart';
import 'package:luas_bangun_datar/utils/MyAlertDialog.dart';
import 'package:luas_bangun_datar/utils/MyElevatedButton.dart';
import 'package:luas_bangun_datar/utils/MyText.dart';
import 'package:luas_bangun_datar/utils/MyTextField.dart';

class LuasJajarGenjang extends StatefulWidget {
  const LuasJajarGenjang({super.key});

  @override
  State<LuasJajarGenjang> createState() => LuasJajarGenjangState();
}

class LuasJajarGenjangState extends State<LuasJajarGenjang> {
  TextEditingController? ctrAlas = TextEditingController();
  TextEditingController? ctrTinggi = TextEditingController();
  final LuasController controller = Get.put(LuasController()); 

  Widget myColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MyText(value: "alas x tinggi", fontSize: 16),
        const SizedBox(width: double.infinity, height: 10),
        MyTextField(label: "alas (cm)", ctr: ctrAlas!),
        MyTextField(label: "tinggi (cm)", ctr: ctrTinggi!),
        const MyText(value: "Hasil :", fontSize: 18, fontWeight: FontWeight.bold),
        Expanded(
          child: Obx(
            () => MyText(value: "${controller.luasJajarGenjang.value.toStringAsFixed(2)}cm²")
          ),
        ),
        MyElevatedButton(
          buttonText: "Hitung",
          onPressed: () {
            ctrAlas!.text.isNotEmpty && ctrTinggi!.text.isNotEmpty ?
            controller.hitungLuasJajarGenjang(double.parse(ctrAlas!.text.toString()), double.parse(ctrTinggi!.text.toString())) :
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
        title: const MyText(value: "Jajar Genjang", fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
        leading: const BackButton(
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