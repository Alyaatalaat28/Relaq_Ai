import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:relaq_ai/core/utils/constants.dart';

class ProcessButton extends StatelessWidget {
  const ProcessButton({super.key,required this.text,this.onPressed});
  final String text;
  final void Function()?onPressed;
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.sizeOf(context).width;
    var height=MediaQuery.sizeOf(context).height;
    return Container(
      width:width*0.6,
      height:height*0.07 ,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextButton(
        onPressed: onPressed, 
        child: Text(text,
        textAlign: TextAlign.center,
        style:GoogleFonts.oswald(
         color: whiteColor)
        )),
    );
  }
}