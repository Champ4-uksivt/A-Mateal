import 'package:a_matual/presentation/colors/color.dart';
import 'package:a_matual/presentation/pages/detailorder_page.dart';
import 'package:a_matual/presentation/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
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
        title: MyText(title: 'Заказы', size: 16, color: MyColors.textColor),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyText(title: 'Недавний', size: 16, color: MyColors.textColor)
                ],
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
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width - 221,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                  width: 132,
                                  child: 
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailorderPage()));
                                            },
                                            child: Text('№ 325556516', style: GoogleFonts.roboto(fontSize: 14, color: MyColors.accentColor),textAlign: TextAlign.left,)),
                                        ],
                                      ),
                                      SizedBox(height: 7,),
                                      Text('Nike Air Max 270 Essential', style: GoogleFonts.roboto(fontSize: 14, color: MyColors.textColor),textAlign: TextAlign.left,),
                                      SizedBox(height: 5,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          MyText(title: '₽364.95', size: 14, color: MyColors.textColor),
                                          MyText(title: '₽260.00', size: 14, color: MyColors.hintColor),
                                        ],
                                      ),
                                    ],
                                  ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  )
                                    ],
                                  ),
                                  
                                ),
                                
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                MyText(title: '7 мин назад', size: 14, color: MyColors.hintColor)
                              ],
                            )
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
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width - 221,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                  width: 132,
                                  child: 
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailorderPage()));
                                            },
                                            child: Text('№ 325556516', style: GoogleFonts.roboto(fontSize: 14, color: MyColors.accentColor),textAlign: TextAlign.left,)),
                                        ],
                                      ),
                                      SizedBox(height: 7,),
                                      Text('Nike Air Max 270 Essential', style: GoogleFonts.roboto(fontSize: 14, color: MyColors.textColor),textAlign: TextAlign.left,),
                                      SizedBox(height: 5,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          MyText(title: '₽364.95', size: 14, color: MyColors.textColor),
                                          MyText(title: '₽260.00', size: 14, color: MyColors.hintColor),
                                        ],
                                      ),
                                    ],
                                  ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  )
                                    ],
                                  ),
                                  
                                ),
                                
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                MyText(title: '7 мин назад', size: 14, color: MyColors.hintColor)
                              ],
                            )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyText(title: 'Вчера', size: 16, color: MyColors.textColor)
                ],
              ),
              SizedBox(
                height: 28,
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
                            child: Stack(
                              alignment: Alignment.topRight,
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width - 221,
                                  child: Row(
                                    children: [
                                      SizedBox(
                                  width: 132,
                                  child: 
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailorderPage()));
                                            },
                                            child: Text('№ 325556516', style: GoogleFonts.roboto(fontSize: 14, color: MyColors.accentColor),textAlign: TextAlign.left,)),
                                        ],
                                      ),
                                      SizedBox(height: 7,),
                                      Text('Nike Air Max 270 Essential', style: GoogleFonts.roboto(fontSize: 14, color: MyColors.textColor),textAlign: TextAlign.left,),
                                      SizedBox(height: 5,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          MyText(title: '₽364.95', size: 14, color: MyColors.textColor),
                                          MyText(title: '₽260.00', size: 14, color: MyColors.hintColor),
                                        ],
                                      ),
                                    ],
                                  ),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  )
                                    ],
                                  ),
                                  
                                ),
                                
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                MyText(title: '10:23', size: 14, color: MyColors.hintColor)
                              ],
                            )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
              ),
              SizedBox(height: 13,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 110,
                    height: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: MyColors.blockColor,
                    ),
                    child: Padding(padding: EdgeInsets.only(left: 9, top: 9, bottom: 10, right: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/examplesniker.png'),
                          Padding(padding: EdgeInsets.only(top: 19, bottom: 10),
                            child: Container(
                              width: 162,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      MyText(title: 'Nike Air Max 200', size: 16, color: MyColors.textColor),
                                    ],
                                  ),
                                  SizedBox(height: 6,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      MyText(title: '₽94.05', size: 14, color: MyColors.textColor),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 58,
                    height: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: MyColors.redColor,
                    ),
                    child: Padding(padding: EdgeInsets.symmetric(vertical: 14),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/deny.svg'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 58,
                    height: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: MyColors.accentColor,
                    ),
                    child: Padding(padding: EdgeInsets.symmetric(vertical: 14),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/rebuy.svg'),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 110,
                    height: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: MyColors.blockColor,
                    ),
                    child: Padding(padding: EdgeInsets.only(left: 9, top: 9, bottom: 10, right: 38),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/examplesniker.png'),
                          Padding(padding: EdgeInsets.only(top: 19, bottom: 10),
                            child: Container(
                              width: 143,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      MyText(title: 'Nike Club Max', size: 16, color: MyColors.textColor),
                                    ],
                                  ),
                                  SizedBox(height: 6,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      MyText(title: '₽584.95', size: 14, color: MyColors.textColor),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}