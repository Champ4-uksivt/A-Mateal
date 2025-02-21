import 'package:a_matual/presentation/colors/color.dart';
import 'package:a_matual/presentation/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailorderPage extends StatefulWidget {
  const DetailorderPage({super.key});

  @override
  State<DetailorderPage> createState() => _DetailorderPageState();
}

class _DetailorderPageState extends State<DetailorderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(padding: EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset('assets/back_icon.svg'))
        ),
        title: MyText(title: '325556516', size: 16, color: MyColors.textColor),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 17,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyText(title: '7 мин назад', size: 14, color: MyColors.hintColor)
                ],
              ),
              SizedBox(
                height: 17,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 125,
                decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: MyColors.blockColor,
                    ),
                    child: Padding(padding: EdgeInsets.only(left: 10, top: 10, bottom: 10, right: 38),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/examplesniker.png'),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 221,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 112,
                                  child: 
                                    Column(
                                      children: [
                                        Text('Nike Air Max 270 Essential', style: GoogleFonts.roboto(fontSize: 14, color: MyColors.textColor),textAlign: TextAlign.left,),
                                        SizedBox(height: 30,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            MyText(title: '₽814.15', size: 16, color: MyColors.textColor),
                                            MyText(title: '1 шт', size: 16, color: MyColors.hintColor),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 125,
                decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: MyColors.blockColor,
                    ),
                    child: Padding(padding: EdgeInsets.only(left: 10, top: 10, bottom: 10, right: 38),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/examplesniker.png'),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 221,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 112,
                                  child: 
                                    Column(
                                      children: [
                                        Text('Nike Air Max 270 Essential', style: GoogleFonts.roboto(fontSize: 14, color: MyColors.textColor),textAlign: TextAlign.left,),
                                        SizedBox(height: 30,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            MyText(title: '₽1200.10', size: 16, color: MyColors.textColor),
                                            MyText(title: '2 шт', size: 16, color: MyColors.hintColor),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
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
                        ],
                      ),
                    ),
                    SizedBox(height: 12,),
                    Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Адрес', style: GoogleFonts.roboto(fontSize: 14, color: MyColors.textColor,), textAlign: TextAlign.left,),
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
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ]
          )
        )
      ),
    );
  }
}