import 'package:a_matual/presentation/colors/color.dart';
import 'package:a_matual/presentation/pages/Sign%20in.dart';
import 'package:a_matual/presentation/pages/fhreeboard.dart';
import 'package:a_matual/presentation/pages/firstboard.dart';
import 'package:a_matual/presentation/pages/secondboard.dart';
import 'package:a_matual/presentation/widget/my_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardPage extends StatefulWidget {
  const BoardPage({super.key});

  @override
  State<BoardPage> createState() => _BoardPageState();
}


class _BoardPageState extends State<BoardPage> {
  PageController controller = PageController();
  bool isFirst = true;
  int numberboard = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width:  MediaQuery.of(context).size.width,
          color: MyColors.accentColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: PageView(
                  onPageChanged: (value) => setState(() {
                    value == 0? isFirst = true : isFirst = false ;
                    numberboard = value;
                  }),
                  controller: controller,
                  children: [
                    Firstboard(),
                    Secondboard(),
                    ThreeBoard()
                  ],
                ),
              ),
              SmoothPageIndicator(controller: controller, count: 3, 
                effect: WormEffect(
                  activeDotColor: MyColors.blockColor,
                  dotColor: MyColors.disableColor,
                  dotWidth: controller.keepPage? 43 : 28,
                  spacing: 12,
                  dotHeight: 5,
                ),
              ),
              SizedBox(
                height: 95,
              ),
              Container(
                width: MediaQuery.of(context).size.width -40,
                child: MyButton(onTap: numberboard != 2? ()  {
                  setState(() {
                    controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInCirc);
                  });
                } : () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Sign_in_page()));
                }, color: MyColors.blockColor, title: isFirst? 'Начать' : 'Далее', colortitle: MyColors.textColor),
              ),
              SizedBox(height: 36,),
            ],
          ),
        ),
      ),
    );
  }
}