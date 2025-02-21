import 'package:a_matual/presentation/colors/color.dart';
import 'package:a_matual/presentation/pages/details_page.dart';
import 'package:a_matual/presentation/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BasketPage extends StatefulWidget {
  const BasketPage({super.key});

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
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
        title: MyText(title: 'Корзина', size: 16, color: MyColors.textColor),
      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MyText(title: '3 товара', size: 16, color: MyColors.textColor)
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 58,
                  height: 104,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: MyColors.accentColor,
                  ),
                  child: Padding(padding: EdgeInsets.symmetric(vertical: 14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset('assets/plus.svg'),
                        MyText(title: '1', size: 14, color: MyColors.blockColor),
                        SvgPicture.asset('assets/munis.svg'),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 110,
                  height: 104,
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
            SizedBox(height: 14,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 110,
                  height: 104,
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
                  height: 104,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: MyColors.redColor,
                  ),
                  child: Padding(padding: EdgeInsets.symmetric(vertical: 14),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/delete.svg'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 14,),
            Container(
                  width: MediaQuery.of(context).size.width - 40,
                  height: 104,
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
                            width: 230,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    MyText(title: 'Nike Air Max 270 Essential', size: 16, color: MyColors.textColor),
                                  ],
                                ),
                                SizedBox(height: 6,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    MyText(title: '₽74.95', size: 14, color: MyColors.textColor),
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
      ),
      bottomNavigationBar: Container(
        height: 258,
        color: MyColors.blockColor,
        child: Padding(padding: EdgeInsets.only(right: 20, left: 20, top: 34),
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
                child: Center(child: MyText(title: "Оформить Заказ", size: 14, color: MyColors.blockColor)),
              )
            ],
          ),
        ),
      ),
    );
  }
}