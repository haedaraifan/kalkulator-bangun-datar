import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:luas_bangun_datar/utils/MyText.dart';

class MyTextField extends StatelessWidget {
  final String label;
  final TextEditingController ctr;
  
  const MyTextField({
    Key? key,
    required this.label,
    required this.ctr
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 3),
          child: MyText(value: label, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: double.infinity,
          height: 56,
          child: TextField(
            controller: ctr,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
            ],
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              )
            ),
            style: const TextStyle(
              fontSize: 12,
              fontFamily: "Poppins-Regular"
            ),
          ),
        ),
      ],
    );
  }
}