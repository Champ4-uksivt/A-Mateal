import 'package:a_matual/presentation/colors/color.dart';
import 'package:a_matual/presentation/pages/registor_page.dart';
import 'package:a_matual/presentation/widget/my_button.dart';
import 'package:a_matual/presentation/widget/my_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfdocumentPage extends StatefulWidget {
  const PdfdocumentPage({super.key});

  @override
  State<PdfdocumentPage> createState() => _PdfdocumentPageState();
}

class _PdfdocumentPageState extends State<PdfdocumentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 80,),
          Container(
            width: MediaQuery.of(context).size.width - 40,
            height: MediaQuery.of(context).size.height - 250,
            child: SfPdfViewer.asset('assets/document.pdf'),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegistorPage(isSelectd: false)));
                  },
                  child: Container(
                    width: 140,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: MyColors.blockColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(title: 'Не согласен', size: 16, color: MyColors.textColor)
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 40,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegistorPage(isSelectd: true)));
                  },
                  child: Container(
                    width: 140,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: MyColors.accentColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(title: 'Согласен', size: 16, color: MyColors.blockColor)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}