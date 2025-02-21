import 'package:a_matual/presentation/colors/color.dart';
import 'package:a_matual/presentation/pages/MenuPage.dart';
import 'package:a_matual/presentation/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MainprofilePage extends StatefulWidget {
  const MainprofilePage({super.key});

  @override
  State<MainprofilePage> createState() => _MainprofilePageState();
}

class _MainprofilePageState extends State<MainprofilePage> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(20),
          blurRadius: 30,
        ),
      ],
      showShadow: true,
      borderRadius: 30,
      mainScreenScale: 0.2,
      slideWidth: 300,
      angle: -3,
      mainScreenTapClose: true,
      mainScreen: const HomePage(),
      menuScreen: const Menupage(),
      menuBackgroundColor: MyColors.accentColor,
      openCurve: Curves.easeIn,
      closeCurve: Curves.easeInOutBack,
    );
  }
}