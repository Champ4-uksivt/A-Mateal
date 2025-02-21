import 'package:a_matual/presentation/pages/Board_page.dart';
import 'package:a_matual/presentation/pages/forgotpassword.dart';
import 'package:a_matual/presentation/pages/home.dart';
import 'package:a_matual/presentation/pages/registor_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:a_matual/domain/functions/functions.dart';
import 'package:a_matual/presentation/colors/color.dart';
import 'package:a_matual/presentation/widget/my_button.dart';
import 'package:a_matual/presentation/widget/my_text.dart';
import 'package:a_matual/presentation/widget/text_input.dart';

class Sign_in_page extends StatefulWidget {
  const Sign_in_page({super.key});

  @override
  State<Sign_in_page> createState() => _Sign_in_pageState();
}

TextEditingController emailcontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();


class _Sign_in_pageState extends State<Sign_in_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        leading: Padding(padding: EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => BoardPage()));
            },
            child: SvgPicture.asset('assets/back_icon.svg',))
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: GestureDetector(
                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));},
                  child: MyText(title: 'Пропустить', size: 12, color:  MyColors.subtextdartColor,),
                ),
          ),
        ]
      ),
      body: Align
      (child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 11, left: 18, right: 22),
            child: Column(
              children: [
                MyText(title: 'Привет!', size: 32, color:  MyColors.textColor,),
                SizedBox(
                  height: 8,
                ),
                MyText(title: 'Заполните Свои Данные Или Продолжите Через Социальные Медиа', size: 16, color:  MyColors.subtextdartColor,),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyText(title: 'Email', size: 16, color: MyColors.textColor),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                TextInput(controller: emailcontroller, hint: 'xyz@gmail.com', isPassword: false),
                SizedBox(
                  height: 26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyText(title: 'Пароль', size: 16, color: MyColors.textColor),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                TextInput(controller: passwordcontroller, hint: '••••••••', isPassword: true),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgotpasswordPage()));}, child: MyText(title: 'Восстановить', size: 12, color: MyColors.subtextdartColor)),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
              MyButton(onTap: () {Functions.check(emailcontroller.text, passwordcontroller.text, context);}, color: MyColors.accentColor, title: 'Войти', colortitle: MyColors.backgroundColor),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(padding: EdgeInsets.only(top: 114),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyText(title: "Вы впервые? ", size: 16, color: MyColors.hintColor),
                      GestureDetector(onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RegistorPage(isSelectd: false,)));  
                      }, 
                      child: MyText(title: "Создать пользователя", size: 16, color: MyColors.textColor)),
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
      ),
    );
  }
}