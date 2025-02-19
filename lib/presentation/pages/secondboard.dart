import 'package:a_matual/presentation/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Secondboard extends StatefulWidget {
  const Secondboard({super.key});

  @override
  State<Secondboard> createState() => _SecondboardState();
}

class _SecondboardState extends State<Secondboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0101010),
      body: Container(
        height: MediaQuery.of(context).size.height - 360,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 80,),
            Image.asset('assets/sneaker2.png'),
            Padding(
            padding: EdgeInsets.only(left: 30,right: 30, bottom: 0),
            child: Column(
              children: [
                Text('Начнем путешествие', style: GoogleFonts.roboto(fontSize: 34, color: MyColors.blockColor),textAlign: TextAlign.center),
                SizedBox(
                  height: 12,
                ),
                Text('Умная, великолепная и модная коллекция Изучите сейчас', style: GoogleFonts.roboto(fontSize: 16, color: MyColors.blockColor),textAlign: TextAlign.center),
              ],
            ),
          ),
          ],
        ),
      ),
    );
  }
}