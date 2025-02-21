import 'package:a_matual/presentation/colors/color.dart';
import 'package:a_matual/presentation/pages/Sign%20in.dart';
import 'package:a_matual/presentation/pages/basket_page.dart';
import 'package:a_matual/presentation/pages/favorite.dart';
import 'package:a_matual/presentation/pages/notification_page.dart';
import 'package:a_matual/presentation/pages/order_page.dart';
import 'package:a_matual/presentation/pages/profile_page.dart';
import 'package:a_matual/presentation/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Menupage extends StatefulWidget {
  const Menupage({super.key});

  @override
  State<Menupage> createState() => _MenupageState();
}

class _MenupageState extends State<Menupage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topLeft,
        child: Container(
          color: MyColors.accentColor,
          child: Column(
            children: [
              SizedBox(height: 78,),
              Padding(padding: EdgeInsets.only(left: 35),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/user_image.png',height: 96, width: 96,),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                    MyText(title: 'Эмануэль Кверти', size: 20, color: MyColors.blockColor),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 55,),
              Padding(padding: EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/user_nav.svg', color: MyColors.blockColor,),
                          SizedBox(width: 22,),
                          MyText(title: 'Профиль', size: 16, color: MyColors.blockColor),
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => BasketPage()));
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/basket_nav.svg', color: MyColors.blockColor,),
                          SizedBox(width: 22,),
                          MyText(title: 'Корзина', size: 16, color: MyColors.blockColor),
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => FavoritePage()));
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/favorite_icon.svg', color: MyColors.blockColor,),
                          SizedBox(width: 22,),
                          MyText(title: 'Избранное', size: 16, color: MyColors.blockColor),
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderPage()));
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/order.svg', color: MyColors.blockColor,),
                          SizedBox(width: 22,),
                          MyText(title: 'Заказы', size: 16, color: MyColors.blockColor),
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> NotificationPage()));
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/notification_icon.svg'),
                          SizedBox(width: 22,),
                          MyText(title: 'Уведомления', size: 16, color: MyColors.blockColor),
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        SvgPicture.asset('assets/setting.svg', color: MyColors.blockColor,),
                        SizedBox(width: 22,),
                        MyText(title: 'Настройки', size: 16, color: MyColors.blockColor),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 38,),
                        Container(
                          width: MediaQuery.of(context).size.width - 40,
                          height: 1,
                          color: MyColors.backgroundColor,
                          ),
              
              
                        SizedBox(height: 30,),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Sign_in_page()));
                      },
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/exit.svg', color: MyColors.blockColor,),
                                SizedBox(width: 22,),
                                MyText(title: 'Выйти', size: 16, color: MyColors.blockColor),
                              ],
                            ),
                          ),
                        ),
            ],
          ),
        ),
      ),
    );
  }
}