import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:relaq_ai/core/utils/constants.dart';

class UploadImageOptions extends StatelessWidget {
  const UploadImageOptions({super.key});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.sizeOf(context).width;
    var height=MediaQuery.sizeOf(context).height;
    return  Column(
      children:[
          Container(
            width:width*0.7 ,
            height: height*0.35,
            decoration: BoxDecoration(
              border: Border.all(
                color: primaryColor,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon:const Icon(
                    Icons.photo,
                    size: 40,
                    color: primaryColor,
                  ) ,
                   onPressed: () {  },),
                   const SizedBox(
                    height: 5.0,
                   ),
                Text('select file',
                 textAlign: TextAlign.center,
                 style:GoogleFonts.oswald(
                 color: whiteColor
              ),
              )
              ],
            ),
          )
      ]
    );
  }
}