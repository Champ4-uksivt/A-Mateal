import 'package:flutter/material.dart';
import 'package:a_matual/presentation/widget/my_text.dart';

class Functions {
  static Function()? check(String email, String password, BuildContext context) {
  if(email.isEmpty || password.isEmpty)
    {
      Form(child: 
        Container(
          child: Column(
            children: [
              MyText(title: 'Ошибка', size: 16, color: Colors.black)
            ],
          ),
        ),
      );
    }
  }
}