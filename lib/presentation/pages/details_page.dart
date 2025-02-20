import 'dart:developer';

import 'package:a_matual/domain/functions/functions.dart';
import 'package:a_matual/presentation/colors/color.dart';
import 'package:a_matual/presentation/pages/basket_page.dart';
import 'package:a_matual/presentation/widget/my_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key, required this.id});

  final String id;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

String idSneaker = "";
bool isFull = false;

class _DetailsPageState extends State<DetailsPage> {
  @override
  void initState() {
    idSneaker = widget.id;
    log(idSneaker);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [ Padding(padding: EdgeInsets.only(right: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => BasketPage()));
            },
            child: SvgPicture.asset('assets/basket.svg', width: 44, height: 44,)),
        ),
        ],
        leading: Padding(padding: EdgeInsets.only(left: 20),
          child: SvgPicture.asset('assets/back_icon.svg')
        ),
        title: MyText(title: 'Sneaker Shop', size: 16, color: MyColors.textColor),
      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 12),
        child:  Column(
          children: [
            Padding(padding: EdgeInsets.only(left: 8),
            child: FutureBuilder(future: Functions.getSneaker(idSneaker), builder: (context, snapshot) {
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
                    SizedBox(height: 26,),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 259,
                          child: Text(sneaker.fullname, style: GoogleFonts.roboto(fontSize: 26, color: MyColors.textColor), textAlign: TextAlign.left,),
                        ),
                      ],
                    ),
                    SizedBox(height: 7,),
                    FutureBuilder(future: Functions.getCategory(sneaker.category), builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting){
                        return Column(children: [CircularProgressIndicator()],);
                      }
                      else if (snapshot.hasError){
                        return Column(children: [Text('Error loading')],);
                      }
                    else if (!snapshot.hasData){
                      return Column(children: [Text('Category not found')],);
                    }
                    else{
                      final category = snapshot.data!;
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MyText(title: category.name, size: 16, color: MyColors.hintColor)
                        ],
                      );
                    }
                    },
                    ),
                    SizedBox(height: 11,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        MyText(title: '₽${sneaker.price.toString()}', size: 24, color: MyColors.textColor),
                      ],
                    ),
                  ],
                );
              }
            },
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              FutureBuilder(future: Functions.getImage(idSneaker), builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting){
                  return Column(children: [CircularProgressIndicator()],);}
                else if (snapshot.hasError){
                  return Column(children: [Text('Error loading')],);}
                else if (!snapshot.hasData){
                  return Column(children: [Text('Image not found')],);}
                else{
                  final image = snapshot.data!;
                    return Image.memory(image);
                  }
                },
              ),
              Padding(padding: EdgeInsets.only(top: 80), child: Image.asset('assets/pedistal.png'),),
            ],
          ),
          
            SizedBox(
              height: 37,
            ),
            SizedBox(
              height: 33,
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                   FutureBuilder(future: Functions.getSneaker(idSneaker), builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting){
                      return Column(children: [CircularProgressIndicator()],);}
                    else if (snapshot.hasError){
                      return Column(children: [Text('Error loading')],);}
                    else if (!snapshot.hasData){
                      return Column(children: [Text('Sneaker not found')],);}
                    else{
                      final sneaker = snapshot.data!;
                      return Text(sneaker.description, maxLines: isFull? null : 3, style: GoogleFonts.roboto(color: MyColors.hintColor, fontSize: 14),);
                      }
                    },
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isFull = !isFull;
                          });
                        },
                        child: MyText(title: isFull? 'Скрыть' : "Подробнее", size: 14, color: MyColors.accentColor),
                      )
                    ],
                  ),

                ],
              ),
            ),

          ]
        ),

      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(right: 20,left: 20, bottom: 40),
        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: MyColors.iconColor,
                          ),
                          child: Padding(padding: EdgeInsets.all(14), child: SvgPicture.asset('assets/heart_icon.svg')),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => BasketPage()));
                          },
                          child: Container(
                            height: 52,
                            width: 265,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: MyColors.accentColor,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 15, right: 12, top: 15, bottom: 15),
                              child: Stack(
                                children: [
                                  SvgPicture.asset('assets/basket_nav.svg'),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      MyText(title: 'В Корзину', size: 14, color: MyColors.blockColor)
                                    ],
                                  )
                                ]
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
      ),
    );
  }
}