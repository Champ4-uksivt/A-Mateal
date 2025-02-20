import 'package:a_matual/presentation/colors/color.dart';
import 'package:a_matual/presentation/pages/Sign%20in.dart';
import 'package:a_matual/presentation/pages/checkout_page.dart';
import 'package:a_matual/presentation/widget/my_button.dart';
import 'package:a_matual/presentation/widget/my_text.dart';
import 'package:a_matual/presentation/widget/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_svg/svg.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
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
      body: Align
      (child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 11, left: 18, right: 22),
            child: Column(
              children: [
                MyText(title: 'OTP Проверка', size: 32, color:  MyColors.textColor,),
                SizedBox(
                  height: 8,
                ),
                SizedBox(width: 335, child: MyText(title: 'Пожалуйста, Проверьте Свою Электронную Почту, Чтобы Увидеть Код Подтверждения', size: 16, color:  MyColors.subtextdartColor,)),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyText(title: 'OTP Код', size: 21, color: MyColors.textColor)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                OtpTextField(
                  onSubmit: (value) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CheckoutPage()));
                  },
                  focusedBorderColor: MyColors.redColor,
                  borderColor: MyColors.backgroundColor,
                  numberOfFields: 6,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  fieldHeight: 89,
                  fieldWidth: 46,
                  showFieldAsBox: true,
                  borderRadius: BorderRadius.circular(12),
                  borderWidth: 1.3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(title: 'Отправить заново', size: 12, color: MyColors.subtextdartColor),
                    MyText(title: '00:30', size: 12, color: MyColors.subtextdartColor),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}