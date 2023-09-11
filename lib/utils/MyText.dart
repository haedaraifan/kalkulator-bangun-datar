import 'package:flutter/material.dart';
import 'package:luas_bangun_datar/utils/AppColors.dart';

class MyText extends StatelessWidget {
  final String value;
  final String fontFamily;
  final double fontSize;
  final Color color;
  final TextAlign textAlign;
  final FontWeight fontWeight;
  
  const MyText({
    Key? key,
    required this.value,
    this.fontSize = 20,
    this.fontFamily = "Poppins-Regular",
    this.color = AppColors.textColor,
    this.textAlign = TextAlign.start,
    this.fontWeight = FontWeight.normal
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Text(
        value,
        textAlign: textAlign,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color
        ),
      ),
    );
  }
}