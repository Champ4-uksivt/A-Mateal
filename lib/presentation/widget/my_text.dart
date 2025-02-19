import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatefulWidget {
  const MyText({super.key,
  required this.title,
  required this.size,
  required this.color});

  final String title;
  final double size;
  final Color color;


  @override
  State<MyText> createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.title, style: GoogleFonts.roboto(fontSize: widget.size, color: widget.color),textAlign: TextAlign.center);
  }
}