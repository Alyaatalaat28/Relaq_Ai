import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:relaq_ai/core/utils/constants.dart';

class AiToolItem extends StatelessWidget {
  const AiToolItem({super.key,required this.assetName,required this.text,this.onTap});
  final String assetName;
  final String text;
  final void Function()?onTap;
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.sizeOf(context).width;
    var height=MediaQuery.sizeOf(context).height;
    return  InkWell(
      onTap:onTap,
      child: SizedBox(
        width:width*0.35,
        height:height*0.34,
        child:Stack(
          children:[
            Image(
              image:AssetImage(assetName),
              fit:BoxFit.fill,
               width:width*0.35,
               height:height*0.34,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height:60 ,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color:whiteColor.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(text,
                  textAlign: TextAlign.center,
                  style:GoogleFonts.oswald(),
                  )
                  ),
              ),
            ),
          ]
        ),
      ),
    );
  }
} 