import 'package:a_matual/domain/functions/functions.dart';
import 'package:a_matual/presentation/colors/color.dart';
import 'package:a_matual/presentation/pages/details_page.dart';
import 'package:a_matual/presentation/pages/home.dart';
import 'package:a_matual/presentation/pages/notification_page.dart';
import 'package:a_matual/presentation/pages/profile_page.dart';
import 'package:a_matual/presentation/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        actions: [ Padding(padding: EdgeInsets.only(right: 20),
          child: Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
            color: MyColors.blockColor,
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: SvgPicture.asset('assets/heart_icon.svg'),
              ),
            ),
        ),
        ],
        leading: Padding(padding: EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset('assets/back_icon.svg'))
        ),
        title: MyText(title: 'Избранное', size: 16, color: MyColors.textColor),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 20,),
            GestureDetector(
              onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(id: '01934e25-ee0e-7c87-8271-0a7f5ddcf04c')));},
              child: Container(
                width: 160,
                height: 188,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: MyColors.blockColor,
                ),
                child: Column(
                  children: [
                    FutureBuilder(future: Functions.getSneaker('01934e25-ee0e-7c87-8271-0a7f5ddcf04c'), builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting){
                      return Column(children: [CircularProgressIndicator()],);
                    }
                    else if (snapshot.hasError){
                      return Column(children: [Text('Error loading')],);
                    }
                    else if (!snapshot.hasData)
                    {
                      return Column(children: [Text('Sneaker not found')],);
                    }
                    else{
                      final sneaker = snapshot.data!;
                      return Column(
                        
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 9, right: 9, top: 18),
                        child: Column(
                          children: [
                            Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              SvgPicture.asset('assets/heart.svg'),
                              FutureBuilder(future: Functions.getImage('01934e25-ee0e-7c87-8271-0a7f5ddcf04c'), builder: (context, snapshot) {
                              if (snapshot.connectionState == ConnectionState.waiting){
                                return Column(children: [CircularProgressIndicator()],);}
                              else if (snapshot.hasError){
                                return Column(children: [Text('Error loading')],);}
                              else if (!snapshot.hasData){
                                return Column(children: [Text('Image not found')],);}
                              else{
                                final image = snapshot.data!;
                                return Container(height: 70, width: 112, child: Image.memory(image));
                                            }
                                          },
                                        ),
                            ],
                          ),
                          SizedBox(height: 14,),
                          Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Text('BEST SELLER', style: GoogleFonts.roboto(fontSize: 12, color: MyColors.accentColor), textAlign: TextAlign.left,),
                          ),
                        ],
                      ),
                      SizedBox(height: 8,),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Text(sneaker.name, style: GoogleFonts.roboto(fontSize: 16, color: MyColors.textColor), textAlign: TextAlign.left,),
                          ),
                        ],
                      ),
                          ],
                        ),
                      ),
                      SizedBox(height: 4,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(padding: EdgeInsets.only(left: 9), child: MyText(title: '₽${sneaker.price.toString()}', size: 14, color: MyColors.textColor)),
                          SvgPicture.asset('assets/add.svg'),
                        ],
                      ),
                    ],
                  );
                }
              },
              ),
                  ],
                ),
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
                        
                      },
                      child: SvgPicture.asset('assets/unheart_nav.svg', color: MyColors.accentColor,)),
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