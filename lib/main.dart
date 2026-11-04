import 'package:flutter/material.dart';

import 'introduction_screen/introduction_screen_view.dart';

void main()
{
  runApp(IntroductionScreen());
}
class IntroductionScreen extends StatelessWidget {
   const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false, home: IntroductionScreenView(

    ),
     routes: {

     },
    );
  }
}
