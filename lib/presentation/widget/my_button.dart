import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  const MyButton({super.key,
  required this.onTap,
  required this.color,
  required this.title,
  required this.colortitle,});

  final Function()? onTap;
  final Color color;
  final String title;
  final Color colortitle;

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: widget.color,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.title, style: TextStyle(color: widget.colortitle, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}