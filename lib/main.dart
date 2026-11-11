import 'package:flutter/material.dart';
import 'package:introduction_screen/core/utils/app_routes/app_routes.dart';
import 'package:introduction_screen/sebiha/sebiha.dart';

import 'introduction_screen/introduction_screen_view.dart';

void main()
{
  runApp(IntroductionScreen());
}
class IntroductionScreen extends StatelessWidget {
   const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,



    initialRoute: AppRoutes.introductionScreen,
      routes: {
      AppRoutes.introductionScreen:(context)=>IntroductionScreenView(),
        AppRoutes.sebiha:(context)=>Sebiha(),
      },

    );
  }
}
