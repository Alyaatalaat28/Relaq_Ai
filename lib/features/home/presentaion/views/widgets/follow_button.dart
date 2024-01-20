import 'package:flutter/material.dart';
import 'package:relaq_ai/core/utils/constants.dart';
import 'package:relaq_ai/core/utils/styles.dart';

class FollowButton extends StatelessWidget {
  const FollowButton({super.key});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.sizeOf(context).width;
    var height=MediaQuery.sizeOf(context).height;
    return Container(
      width:width*0.26 ,
      height:height*0.06,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Center(
        child: Text('Follow',
        style: Styles.textStyle18,),
      ),
    );
  }
}