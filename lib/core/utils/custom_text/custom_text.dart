import 'package:flutter/material.dart';
import 'package:introduction_screen/core/utils/appcolors/app_colors.dart';

class CustomText extends StatelessWidget {
 final String text;
 final double fontSize;
 final Color color;
 final FontWeight fontWeight;
 final TextAlign textAlign;
 final TextDecoration textDecoration;
  const CustomText({super.key,required this.text,this.fontWeight=FontWeight.bold,
    required this.fontSize,
    this.color=AppColors.mainColor,
    this.textAlign=TextAlign.center,this.textDecoration=TextDecoration.none});

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle( fontWeight: fontWeight,
         color:  color,
        fontSize: fontSize,

      ),
    );
  }
}
