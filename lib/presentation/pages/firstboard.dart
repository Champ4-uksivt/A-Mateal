import 'package:a_matual/presentation/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Firstboard extends StatefulWidget {
  const Firstboard({super.key});

  @override
  State<Firstboard> createState() => _FirstboardState();
}

class _FirstboardState extends State<Firstboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0101010),
      body: Container(
        child: SizedBox(
          height: MediaQuery.of(context).size.height - 360,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: 70,left: 50, right: 58, bottom: 0),
              child: Column(
                children: [
                  Text('Добро пожаловать', style: GoogleFonts.roboto(fontSize: 30, color: MyColors.blockColor),textAlign: TextAlign.center),
                  SizedBox(
                    height: 122,
                  ),
                ],
              ),
              ),
              Image.asset('assets/sneaker1.png',)
            ],
          ),
        ),
      ),
    );
  }
}