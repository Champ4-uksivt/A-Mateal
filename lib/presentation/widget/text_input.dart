import 'package:a_matual/presentation/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TextInput extends StatefulWidget {
  const TextInput({super.key,
  required this.controller,
  required this.hint,
  required this.isPassword,});

  final String hint;
  final TextEditingController controller;
  final bool isPassword;

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  bool isReviewed = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.isPassword ? isReviewed : false,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword? IconButton(onPressed: () {
          setState(() {
            isReviewed = !isReviewed;
          });
        }, icon: SvgPicture.asset('assets/Eye.svg'),) : null,
        filled: false,
        hintText: widget.hint,
        hintStyle: TextStyle(color: MyColors.hintColor, fontSize: 14),
        fillColor: MyColors.backgroundColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none
        )
        
      ),
      
    );
  }
}