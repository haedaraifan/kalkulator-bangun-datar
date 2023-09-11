import 'package:flutter/material.dart';
import 'package:luas_bangun_datar/utils/AppColors.dart';
import 'package:luas_bangun_datar/utils/MyText.dart';

class MyElevatedButton extends StatelessWidget {
  final String buttonText;
  final Function()? onPressed;
  
  const MyElevatedButton({
    super.key, 
    required this.buttonText,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
            ),
            backgroundColor: AppColors.primaryColor
          ),
          child: MyText(value: buttonText, fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}