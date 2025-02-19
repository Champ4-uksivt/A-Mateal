import 'package:a_matual/presentation/colors/color.dart';
import 'package:a_matual/presentation/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        actions: [
          SvgPicture.asset('assets/basket.svg')
        ],
        leading: SvgPicture.asset('assets/Hamburger.svg', width: 44, height: 44,),
        title: Stack(
        children: [
          SvgPicture.asset('assets/logo.svg'),
          SizedBox(width: 20,),
          MyText(title: 'Главная', size: 32, color: MyColors.textColor),
        ],
      )
      )
    );
  }
}