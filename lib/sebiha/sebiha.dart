import 'package:flutter/material.dart';
import 'package:introduction_screen/azkar_words/azkar_words.dart';
import 'package:introduction_screen/core/utils/appcolors/app_colors.dart';
import 'package:introduction_screen/core/utils/custom_text/custom_text.dart';

import '../core/utils/images_path/image_path.dart';

class Sebiha extends StatefulWidget {
   Sebiha({super.key});

  @override
  State<Sebiha> createState() => _SebihaState();
}

class _SebihaState extends State<Sebiha> {
  double turn=0;
  int counter=0;
  String word="سبحان الله";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(alignment: Alignment.bottomCenter,
        children: [
          Image.asset(width: double.infinity,
              height: double.infinity,fit: BoxFit.fill,
              ImagePath.sebihaBackground),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Align(alignment: Alignment.topCenter,  child: Image.asset(  ImagePath.islamiView)),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 550),
            child: CustomText(text: AzkarWords.azkars[3], fontSize: 36,color: AppColors.white,),
          ),

          GestureDetector(onTap: (){
            setState(() {
              turn+=0.03;
              if(counter>=0)
                       {counter++;
                           if(counter>99)
                             {
                               counter=counter%99;
                             }
                       }
              if(counter>0&&counter<=33)
                {
                  word=AzkarWords.azkars[0];
                }
              else if (counter>33&&counter<66)
                {
                  word =AzkarWords.azkars[1];
                }
              else {
                word=AzkarWords.azkars[2];
              }

            }
            );
          },
            child: SizedBox(width: 400,height: 600,
              child: Center(
                child: AnimatedRotation( turns: turn,
                  duration:  const Duration(milliseconds: 200),
                  curve: Curves.easeOut,
                  child: Image.asset(fit: BoxFit.contain,
                      ImagePath.sebiha),
                ),
              ),
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(bottom: 300),
          child:CustomText(text: word,
            fontSize: 36,color: AppColors.white,)
        )
        ,Padding(
                padding: const EdgeInsets.only(bottom: 230),
                child: CustomText(text: counter.toString(),
                  fontSize: 36,color: AppColors.white,),
              )],
      ),
    );
  }
}
