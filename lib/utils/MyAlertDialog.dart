import 'package:flutter/material.dart';
import 'package:luas_bangun_datar/utils/AppColors.dart';
import 'package:luas_bangun_datar/utils/MyText.dart';

class MyAlertDialog {
  void showEmptyDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      title: const MyText(value: "Alert!", fontSize: 24, fontWeight: FontWeight.bold,),
      content: Container(
        child: MyText(value: "Isian form tidak valid", fontSize: 18,),
      ),
      actions: [
        TextButton(
          child: const MyText(value: 'Ok', fontSize: 20, color: AppColors.primaryColor),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    );

    showDialog(context: context, builder: (context) => alert);
  }
}