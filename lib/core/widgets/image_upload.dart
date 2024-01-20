import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:relaq_ai/core/utils/constants.dart';

class UploadImageOptions extends StatelessWidget {
  const UploadImageOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children:[
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: primaryColor,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Column(
                children: [
                  IconButton(
                    icon:const Icon(
                      Icons.photo,
                      color: primaryColor,
                    ) ,
                     onPressed: () {  },),
                     const SizedBox(
                      height: 5.0,
                     ),
                  Text('select file',
                   textAlign: TextAlign.center,
                style:GoogleFonts.oswald(),)
                ],
              ),
            ),
          )
      ]
    );
  }
}