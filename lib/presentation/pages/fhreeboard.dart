import 'package:a_matual/presentation/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThreeBoard extends StatefulWidget {
  const ThreeBoard({super.key});

  @override
  State<ThreeBoard> createState() => _ThreeBoardState();
}

class _ThreeBoardState extends State<ThreeBoard> {
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
            Image.asset('assets/sneaker3.png'),
            Padding(
            padding: EdgeInsets.only(left: 30,right: 30, bottom: 0),
            child: Column(
              children: [
                Text('У вас есть сила, чтобы', style: GoogleFonts.roboto(fontSize: 34, color: MyColors.blockColor),textAlign: TextAlign.center),
                SizedBox(
                  height: 12,
                ),
                Text('В вашей комнате много красивых и привлекательных растений', style: GoogleFonts.roboto(fontSize: 16, color: MyColors.blockColor),textAlign: TextAlign.center),
              ],
            ),
          ),
          ],
        ),
      ),
    );
  }
}