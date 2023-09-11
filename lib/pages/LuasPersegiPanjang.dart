import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luas_bangun_datar/controllers/LuasController.dart';
import 'package:luas_bangun_datar/utils/AppColors.dart';
import 'package:luas_bangun_datar/utils/MyAlertDialog.dart';
import 'package:luas_bangun_datar/utils/MyElevatedButton.dart';
import 'package:luas_bangun_datar/utils/MyText.dart';
import 'package:luas_bangun_datar/utils/MyTextField.dart';

class LuasPersegiPanjang extends StatefulWidget {
  const LuasPersegiPanjang({super.key});

  @override
  State<LuasPersegiPanjang> createState() => _LuasPersegiPanjangState();
}

class _LuasPersegiPanjangState extends State<LuasPersegiPanjang> {
  TextEditingController? ctrPanjang = TextEditingController();
  TextEditingController? ctrLebar = TextEditingController();
  final LuasController controller = Get.put(LuasController()); 

  Widget myColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MyText(value: "Persegi panjang", fontSize: 30),
        const MyText(value: "panjang x lebar", fontSize: 16),
        const SizedBox(width: double.infinity, height: 10),
        MyTextField(label: "panjang (cm)", ctr: ctrPanjang!),
        MyTextField(label: "lebar (cm)", ctr: ctrLebar!),
        const MyText(value: "Hasil :", fontSize: 18, fontWeight: FontWeight.bold),
        Expanded(
          child: Obx(
            () => MyText(value: "${controller.luasPersegiPanjang.value}cm²")
          ),
        ),
        MyElevatedButton(
          buttonText: "Hitung",
          onPressed: () {
            ctrPanjang!.text.isNotEmpty && ctrLebar!.text.isNotEmpty ?
            controller.hitungLuasPersegiPanjang(double.parse(ctrPanjang!.text.toString()), double.parse(ctrLebar!.text.toString())) :
            MyAlertDialog().showEmptyDialog(context);
          }
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: myColumn()
      ),
      backgroundColor: AppColors.backgroundColor,
    );
  }
}