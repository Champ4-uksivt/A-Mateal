import 'package:a_matual/presentation/colors/color.dart';
import 'package:a_matual/presentation/pages/MenuPage.dart';
import 'package:a_matual/presentation/pages/favorite.dart';
import 'package:a_matual/presentation/pages/home.dart';
import 'package:a_matual/presentation/pages/profile_page.dart';
import 'package:a_matual/presentation/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(padding: EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Menupage()));
            },
            child: SvgPicture.asset('assets/Hamburger.svg', width: 44, height: 44,)),
        ),
        title: MyText(title: 'Уведомления', size: 16, color: MyColors.textColor),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 8,),
              Container(
                width: MediaQuery.of(context).size.width -40,
                height: 148,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: MyColors.backgroundColor,
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MyText(title: 'Заголовок', size: 16, color: MyColors.textColor),
                        ],
                      ),
                      SizedBox(height: 8,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width -40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width -80,
                              child: Text('Lorem ipsum dolor sit amet consectetur. Venenatis pulvinar lobortis risus consectetur morbi egestas id in bibendum. Volutpat nulla urna sit sed diam nulla.', style: GoogleFonts.roboto(fontSize: 12, color: MyColors.textColor))),
                          ],
                        ),
                      ),
                      SizedBox(height: 16,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MyText(title: '27.01.2024, 15:42', size: 12, color: MyColors.subtextdartColor),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12,),
              Container(
                width: MediaQuery.of(context).size.width -40,
                height: 148,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: MyColors.backgroundColor,
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MyText(title: 'Заголовок', size: 16, color: MyColors.textColor),
                        ],
                      ),
                      SizedBox(height: 8,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width -40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width -80,
                              child: Text('Lorem ipsum dolor sit amet consectetur. Venenatis pulvinar lobortis risus consectetur morbi egestas id in bibendum. Volutpat nulla urna sit sed diam nulla.', style: GoogleFonts.roboto(fontSize: 12, color: MyColors.textColor))),
                          ],
                        ),
                      ),
                      SizedBox(height: 16,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MyText(title: '27.01.2024, 15:42', size: 12, color: MyColors.subtextdartColor),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12,),
              Container(
                width: MediaQuery.of(context).size.width -40,
                height: 148,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: MyColors.backgroundColor,
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MyText(title: 'Заголовок', size: 16, color: MyColors.textColor),
                        ],
                      ),
                      SizedBox(height: 8,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width -40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width -80,
                              child: Text('Lorem ipsum dolor sit amet consectetur. Venenatis pulvinar lobortis risus consectetur morbi egestas id in bibendum. Volutpat nulla urna sit sed diam nulla.', style: GoogleFonts.roboto(fontSize: 12, color: MyColors.textColor))),
                          ],
                        ),
                      ),
                      SizedBox(height: 16,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MyText(title: '27.01.2024, 15:42', size: 12, color: MyColors.subtextdartColor),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12,),
              Container(
                width: MediaQuery.of(context).size.width -40,
                height: 148,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: MyColors.backgroundColor,
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MyText(title: 'Заголовок', size: 16, color: MyColors.textColor),
                        ],
                      ),
                      SizedBox(height: 8,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width -40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width -80,
                              child: Text('Lorem ipsum dolor sit amet consectetur. Venenatis pulvinar lobortis risus consectetur morbi egestas id in bibendum. Volutpat nulla urna sit sed diam nulla.', style: GoogleFonts.roboto(fontSize: 12, color: MyColors.textColor))),
                          ],
                        ),
                      ),
                      SizedBox(height: 16,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MyText(title: '27.01.2024, 15:42', size: 12, color: MyColors.subtextdartColor),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12,),
              Container(
                width: MediaQuery.of(context).size.width -40,
                height: 148,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: MyColors.backgroundColor,
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MyText(title: 'Заголовок', size: 16, color: MyColors.textColor),
                        ],
                      ),
                      SizedBox(height: 8,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width -40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width -80,
                              child: Text('Lorem ipsum dolor sit amet consectetur. Venenatis pulvinar lobortis risus consectetur morbi egestas id in bibendum. Volutpat nulla urna sit sed diam nulla.', style: GoogleFonts.roboto(fontSize: 12, color: MyColors.textColor))),
                          ],
                        ),
                      ),
                      SizedBox(height: 16,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MyText(title: '27.01.2024, 15:42', size: 12, color: MyColors.subtextdartColor),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
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

                      },
                      child: SvgPicture.asset('assets/notification_nav.svg', color: MyColors.accentColor,)),
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