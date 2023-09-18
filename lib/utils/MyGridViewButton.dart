import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:luas_bangun_datar/utils/AppColors.dart';
import 'package:luas_bangun_datar/utils/MyText.dart';

class MyGridViewButton extends StatelessWidget {
  final String text;
  final String icon;
  final Function()? onTab;

  const MyGridViewButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.onTab
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Material(
        color: AppColors.primaryColor,
        child: InkWell(
          splashColor: AppColors.secondaryColor,
          onTap: onTab,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(icon, height: 40),
              const SizedBox(height: 10),
              MyText(value: text, fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)
            ]
          ),
        ),
      ),
    );
  }
}