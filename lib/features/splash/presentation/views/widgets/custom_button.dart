import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,required this.backGroundColor,required this.text,required this.textColor,this.onPressed});
  final Color backGroundColor;
  final String text;
  final Color textColor;
  final void Function()?onPressed;
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.sizeOf(context).width;
    var height=MediaQuery.sizeOf(context).height;
    return Container(
      width:width*0.8,
      height:height*0.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: backGroundColor,
      ),
      child:TextButton(
        onPressed: onPressed,
      child:Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize:width*0.04,
        color: textColor,
      ),
      ),
    ),
        );
  }
}