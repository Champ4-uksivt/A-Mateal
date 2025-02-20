import 'package:a_matual/presentation/colors/color.dart';
import 'package:a_matual/presentation/pages/verification_page.dart';
import 'package:a_matual/presentation/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(padding: EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationPage())); //переход на окно верификации
            },
            child: SvgPicture.asset('assets/back_icon.svg'))
        ),
        title: MyText(title: 'Корзина', size: 16, color: MyColors.textColor),
      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 46,),
            Container(
              height: 455,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: MyColors.blockColor,
              ),
              child: Padding(padding: EdgeInsets.only(top: 16, left: 20,right: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Контактная информация', style: GoogleFonts.roboto(fontSize: 14, color: MyColors.textColor,))
                      ],
                    ),
                    SizedBox(height: 16,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset('assets/message.svg'),
                        SizedBox(width: 12,),
                        SizedBox(
                          width: 212,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('emmanuel@gmail.com', style: GoogleFonts.roboto(fontSize: 14, color: MyColors.textColor,)),
                                ],
                              ),
                              SizedBox(height: 4,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Email', style: GoogleFonts.roboto(fontSize: 12, color: MyColors.hintColor,)),
                                ],
                              )
                            ],
                          ),
                        ),
                              ],
                            )
                          ],
                        ),
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SvgPicture.asset('assets/edit.svg'),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 16,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width-80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset('assets/phone.svg'),
                          SizedBox(width: 12,),
                          SizedBox(
                            width: 212,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('+234-811-732-5298', style: GoogleFonts.roboto(fontSize: 14, color: MyColors.textColor,)),
                                  ],
                                ),
                                SizedBox(height: 4,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('Телефон', style: GoogleFonts.roboto(fontSize: 12, color: MyColors.hintColor,)),
                                  ],
                                )
                              ],
                            ),
                          ),
                                ],
                              )
                            ],
                          ),
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SvgPicture.asset('assets/edit.svg'),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 12,),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('Адрес', style: GoogleFonts.roboto(fontSize: 14, color: MyColors.textColor,), textAlign: TextAlign.left,)
                                  ],
                                ),
                                SizedBox(height: 12,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('1082 Аэропорт, Нигерии', style: GoogleFonts.roboto(fontSize: 12, color: MyColors.hintColor,))
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SvgPicture.asset('assets/edit.svg'),
                              ],
                            )
                          ],
                        ),
                        
                      ],
                    ),
                    SizedBox(height: 16,),
                    Image.asset('assets/map.png'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Способ оплаты', style: GoogleFonts.roboto(fontSize: 14, color: MyColors.textColor,)),
                      ],
                    ),
                    SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset('assets/cart.svg'),
                        SizedBox(width: 12,),
                        SizedBox(
                          width: 212,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('DbL Card', style: GoogleFonts.roboto(fontSize: 14, color: MyColors.textColor,)),
                                ],
                              ),
                              SizedBox(height: 4,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('**** **** 0696 4629', style: GoogleFonts.roboto(fontSize: 12, color: MyColors.hintColor,)),
                                ],
                              )
                            ],
                          ),
                        ),
                              ],
                            )
                          ],
                        ),
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SvgPicture.asset('assets/downarrow.svg'),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 258,
        color: MyColors.blockColor,
        child: Padding(padding: EdgeInsets.only(right: 20, left: 20, top: 34, bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(title: 'Сумма', size: 16, color: MyColors.subtextdartColor),
                  MyText(title: '₽753.95', size: 16, color: MyColors.textColor),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(title: 'Доставка', size: 16, color: MyColors.subtextdartColor),
                  MyText(title: '₽60.20', size: 16, color: MyColors.textColor),
                ],
              ),
              SizedBox(height: 18,),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(title: 'Итого', size: 16, color: MyColors.textColor),
                  MyText(title: '₽814.15', size: 16, color: MyColors.accentColor),
                ],
              ),
              SizedBox(height: 32,),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: MyColors.accentColor,
                ),
                child: Center(child: MyText(title: "Подтвердить", size: 14, color: MyColors.blockColor)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}