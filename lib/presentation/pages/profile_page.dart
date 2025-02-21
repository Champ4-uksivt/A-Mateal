import 'package:a_matual/presentation/colors/color.dart';
import 'package:a_matual/presentation/pages/MenuPage.dart';
import 'package:a_matual/presentation/pages/editprofile_page.dart';
import 'package:a_matual/presentation/pages/favorite.dart';
import 'package:a_matual/presentation/pages/home.dart';
import 'package:a_matual/presentation/pages/notification_page.dart';
import 'package:a_matual/presentation/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [ Padding(padding: EdgeInsets.only(right: 20),
          child: Stack(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> EditprofilePage()));
                },
                child: SvgPicture.asset('assets/edit_prof.svg')),
            ]
          )
        ),
        ],
        leading: Padding(padding: EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Menupage()));
            },
            child: SvgPicture.asset('assets/Hamburger.svg', width: 44, height: 44,)),
        ),
        title: MyText(title: 'Профиль', size: 16, color: MyColors.textColor),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 49,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/user_image.png',height: 96, width: 96,),
              ],
            ),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText(title: 'Emmanuel Oyiboke', size: 20, color: MyColors.textColor)
              ],
            ),
            SizedBox(height: 35,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 65,
                  width: MediaQuery.of(context).size.width -40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: MyColors.backgroundColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        RotatedBox(
                          quarterTurns: 135, 
                          child: MyText(title: 'Открыть', size: 12, color: Colors.black),),
                        Image.asset('assets/cod.png', width: MediaQuery.of(context).size.width-80, height: 49,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 21,),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 17),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MyText(title: 'Имя', size: 16, color: MyColors.textColor)
                    ],
                  ),
                  SizedBox(height: 16,),
                  Container(
                    height: 65,
                    width: MediaQuery.of(context).size.width -40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: MyColors.backgroundColor,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            MyText(title: 'Emmanuel', size: 14, color: MyColors.textColor),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 17,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MyText(title: 'Фамилия', size: 16, color: MyColors.textColor)
                    ],
                  ),
                  SizedBox(height: 16,),
                  Container(
                    height: 65,
                    width: MediaQuery.of(context).size.width -40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: MyColors.backgroundColor,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            MyText(title: 'Oyiboke', size: 14, color: MyColors.textColor),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 17,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MyText(title: 'Адрес', size: 16, color: MyColors.textColor)
                    ],
                  ),
                  SizedBox(height: 16,),
                  Container(
                    height: 65,
                    width: MediaQuery.of(context).size.width -40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: MyColors.backgroundColor,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            MyText(title: 'Nigeria', size: 14, color: MyColors.textColor),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 17,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MyText(title: 'Телефон', size: 16, color: MyColors.textColor)
                    ],
                  ),
                  SizedBox(height: 16,),
                  Container(
                    height: 65,
                    width: MediaQuery.of(context).size.width -40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: MyColors.backgroundColor,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            MyText(title: '+7 811-732-5298', size: 14, color: MyColors.textColor),
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                      },
                      child: SvgPicture.asset('assets/name_nav.svg', color: MyColors.hintColor,)),
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
                      child: SvgPicture.asset('assets/user_nav.svg', color: MyColors.accentColor,)),
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