import 'package:flutter/material.dart';
import 'package:introduction_screen/core/utils/appcolors/app_colors.dart';
import 'package:introduction_screen/screenviews/screenviews.dart';
import 'package:introduction_screen/text_title/text_title.dart';
import 'package:introduction_screen/textdescription/text_description.dart';

import '../core/utils/textformat/text_format.dart';

class IntroductionScreenView extends StatefulWidget {
  const IntroductionScreenView({super.key});

  @override
  State<IntroductionScreenView> createState() => _IntroductionScreenViewState();
}

class _IntroductionScreenViewState extends State<IntroductionScreenView> {
  final PageController controller = PageController();


  int currentPage = 0;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
 List<String>views=[
   Screenviews.view1,   Screenviews.view2,
   Screenviews.view3,
   Screenviews.view4,
   Screenviews.view5,

 ];
  List<String>titles=[TextTitle.title1,
    TextTitle.title2,TextTitle.title3,
    TextTitle.title4,TextTitle.title5];
List<String>descriptions=[TextDescription.description1,
  TextDescription.description2,TextDescription.description2,
  TextDescription.description2,
  TextDescription.description2,];
  @override


  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,body:
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [


        Expanded(
          child: PageView.builder(
            controller: controller,
            itemCount: views.length,

            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },

            itemBuilder: (context, index) {
              return Stack(
                children: [Align(alignment: Alignment.topCenter
                    ,  child:Image.asset(Screenviews.titleImage)),

                  Center(child: Container
                    (padding: EdgeInsets.fromLTRB(0,150,0,0),
                      child: Image.asset( views[index],))),


                ],
              );
            },
          ),
        ),

        TextFormat(text: titles[currentPage],fontSize: 20,),
        SizedBox(height: 30,),
        TextFormat(text:descriptions[currentPage],fontSize: 16,),


        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            views.length,
                (index) => Container(
              margin: const EdgeInsets.all(5),
              width: currentPage == index ? 20 : 10,
              height: 10,
              decoration: BoxDecoration(
                color: currentPage == index
                    ? AppColors.mainColor
                    : AppColors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),




        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              TextButton(
                onPressed: currentPage == 0
                    ? null
                    : () {
                  controller.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: const Text(style: TextStyle(color: AppColors.mainColor),'Back'),
              ),

              TextButton(
                onPressed: () {
                  if (currentPage < views.length - 1) {
                    controller.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  } else {

                    debugPrint('Introduction completed!');
                  }
                },
                child: Text(style: TextStyle(color: AppColors.mainColor),
                  currentPage == views.length - 1
                      ? 'Finish'
                      : 'Next',
                ),
              ),
            ],
          ),
        ),


      ]

      ),
    );






  }
}
