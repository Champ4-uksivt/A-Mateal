import 'package:a_matual/presentation/colors/color.dart';
import 'package:a_matual/presentation/pages/favorite.dart';
import 'package:a_matual/presentation/pages/mainprofile_page.dart';
import 'package:a_matual/presentation/pages/notification_page.dart';
import 'package:a_matual/presentation/pages/popular_page.dart';
import 'package:a_matual/presentation/pages/profile_page.dart';
import 'package:a_matual/presentation/pages/zoomdriver.dart';
import 'package:a_matual/presentation/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        actions: [ Padding(padding: EdgeInsets.only(right: 20),
          child: SvgPicture.asset('assets/basket.svg', width: 44, height: 44,),
        ),
        ],
        leading: Padding(padding: EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MainprofilePage()));
            },
            child: SvgPicture.asset('assets/Hamburger.svg', width: 44, height: 44,)),
        ),
        title: Stack(
        children: [
          SvgPicture.asset('assets/logo.svg'),
          
          MyText(title: 'Главная', size: 32, color: MyColors.textColor),
        ],
      )
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox( height: 21,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 52,
                    width: MediaQuery.of(context).size.width - 106,
                    decoration: BoxDecoration(
                    color: MyColors.blockColor,
                      borderRadius: BorderRadius.circular(14)
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 26,
                        ),
                        SvgPicture.asset('assets/search.svg'),
                  SizedBox(
                    width: 12,
                  ),
                  MyText(title: 'Поиск', size: 12, color: MyColors.hintColor),
                      ],
                    ),
                  ),
                  
                  SizedBox(width: 14,),
                  Container(
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: MyColors.accentColor,
                    ),
                    child: Padding (padding: EdgeInsets.all(14), child: SvgPicture.asset('assets/sliders.svg')),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 22,
                  ),
                  Row(
                    children: [
                      MyText(title: 'Категории', size: 16, color: MyColors.textColor)
                    ],
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText(title: 'Популярное', size: 16, color: MyColors.textColor),
                GestureDetector(
                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => PopularPage()));},
                  child: MyText(title: 'Все', size: 12, color: MyColors.accentColor),
                )
              ],
            ),
            ),SizedBox(
              height: 30,
            ),SizedBox(
              height: 182,
            ),SizedBox(
              height: 29,
            ),
            Padding(padding: EdgeInsets.only(right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText(title: 'Акции', size: 16, color: MyColors.textColor),
                GestureDetector(
                  onTap: null,
                  child: MyText(title: 'Все', size: 12, color: MyColors.accentColor),
                )
              ],
            ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(padding: EdgeInsets.only(right: 20, left: 20),
            child: Image.asset('assets/action.png'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Stack(
        children: [
          Image.asset('assets/nav.png'),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: MyColors.accentColor
                  ),
                  child: Padding (padding: EdgeInsets.all(16), child: SvgPicture.asset('assets/basket_nav.svg')),
                ),
              ],
            
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 72, right: 31, left: 31),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {

                      },
                      child: SvgPicture.asset('assets/name_nav.svg', color: MyColors.accentColor,)),
                    SizedBox(width: 41,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> FavoritePage()));
                      },
                      child: SvgPicture.asset('assets/unheart_nav.svg', color: MyColors.hintColor,)),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> NotificationPage()));
                      },
                      child: SvgPicture.asset('assets/notification_nav.svg', color: MyColors.hintColor,)),
                    SizedBox(width: 41,),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfilePage()));
                      },
                      child: SvgPicture.asset('assets/user_nav.svg', color: MyColors.hintColor,)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}