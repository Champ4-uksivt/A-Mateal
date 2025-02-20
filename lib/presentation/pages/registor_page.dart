import 'package:a_matual/domain/functions/functions.dart';
import 'package:a_matual/presentation/colors/color.dart';
import 'package:a_matual/presentation/pages/Pdfdocument_page.dart';
import 'package:a_matual/presentation/pages/Sign%20in.dart';
import 'package:a_matual/presentation/pages/home.dart';
import 'package:a_matual/presentation/widget/my_button.dart';
import 'package:a_matual/presentation/widget/my_text.dart';
import 'package:a_matual/presentation/widget/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class RegistorPage extends StatefulWidget {
  const RegistorPage({super.key,
  required this.isSelectd});

  final bool isSelectd;
  @override
  State<RegistorPage> createState() => _RegistorPageState();
}

TextEditingController namecontroller = TextEditingController();
TextEditingController emailcontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();
bool isSelectdoc = false;

class _RegistorPageState extends State<RegistorPage> {
  @override
  void initState() {
    isSelectdoc = widget.isSelectd;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(padding: EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Sign_in_page()));
            },
            child: SvgPicture.asset('assets/back_icon.svg',))
        ),
      ),
      body: SingleChildScrollView(
        child: Align
        (child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 11, left: 18, right: 22),
              child: Column(
                children: [
                  MyText(title: 'Регистрация', size: 32, color:  MyColors.textColor,),
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
                      MyText(title: 'Ваше имя', size: 16, color: MyColors.textColor),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextInput(controller: namecontroller, hint: 'xxxxxxxx', isPassword: false),
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
                    children: [
                      SvgPicture.asset(isSelectdoc? 'assets/selectdoc.svg' : 'assets/noselectdoc.svg'),
                      SizedBox(width: 12,),
                      GestureDetector(onTap: () {
                        setState(() {
                          isSelectdoc = !isSelectdoc;
                        },);
                      }, child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PdfdocumentPage()));
                        },
                        child: Container(width: MediaQuery.of(context).size.width - 150, child: Text('Даю согласие на обработку персональных данных', style: GoogleFonts.roboto(fontSize: 16, color: MyColors.hintColor)))),),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                GestureDetector(onTap: () {
                  isSelectdoc? Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())) : null;
                },
                child: Container(
                  width: MediaQuery.of(context).size.width - 40,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: MyColors.accentColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Зарегистрироваться', style: GoogleFonts.roboto(fontSize: 14, color: MyColors.backgroundColor),),
                    ],
                  )
                ),
                ),
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
                        MyText(title: "Есть аккаунт? ", size: 16, color: MyColors.hintColor),
                        GestureDetector(onTap: () {
                          Navigator.pop(context);
                        },
                        child: MyText(title: "Войти", size: 16, color: MyColors.textColor)),
                      ],
                    ),
                  ),
                SizedBox(height: 47,)
              ],
            ),
          ],
        ),
        ),
      ),
    );
  }
}