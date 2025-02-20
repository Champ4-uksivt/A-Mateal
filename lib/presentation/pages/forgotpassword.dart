import 'package:a_matual/presentation/colors/color.dart';
import 'package:a_matual/presentation/widget/my_button.dart';
import 'package:a_matual/presentation/widget/my_text.dart';
import 'package:a_matual/presentation/widget/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ForgotpasswordPage extends StatefulWidget {
  const ForgotpasswordPage({super.key});

  @override
  State<ForgotpasswordPage> createState() => _ForgotpasswordPageState();
}
TextEditingController emailcontroller = TextEditingController();

class _ForgotpasswordPageState extends State<ForgotpasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(padding: EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset('assets/back_icon.svg',))
        ),
      ),
      body: Align
      (child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 11, left: 18, right: 22),
            child: Column(
              children: [
                MyText(title: 'Забыл Пароль', size: 32, color:  MyColors.textColor,),
                SizedBox(
                  height: 8,
                ),
                SizedBox(width: 335, child: MyText(title: 'Введите Свою Учетную Запись Для Сброса', size: 16, color:  MyColors.subtextdartColor,)),
                SizedBox(
                  height: 40,
                ),
                TextInput(controller: emailcontroller, hint: 'xyz@gmail.com', isPassword: false),
                SizedBox(
                  height: 40,
                ),
                MyButton(onTap: () {
                  
                }, color: MyColors.accentColor, title: "Отправить", colortitle: MyColors.backgroundColor),
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}