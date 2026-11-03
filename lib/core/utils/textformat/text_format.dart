import 'package:flutter/material.dart';
import 'package:introduction_screen/core/utils/appcolors/app_colors.dart';

class TextFormat extends StatelessWidget {
  String text;
  double fontSize;
   TextFormat({super.key,required this.text,required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
        color:  AppColors.mainColor,
        fontSize: fontSize,

      ),textAlign: TextAlign.center,
    );
  }
}
