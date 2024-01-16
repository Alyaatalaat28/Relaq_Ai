import 'package:flutter/material.dart';
import 'package:relaq_ai/core/utils/constants.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key,this.onPressed});
  final void Function()?onPressed;
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.sizeOf(context).width;
    var height=MediaQuery.sizeOf(context).height;
    return Align(
          alignment:Alignment.center,
           child: SizedBox(
             height: height*0.22,
             child: Stack(
              alignment:Alignment.center,
               children: [
                const Image(
                  image:AssetImage('assets/images/Ellipse.png')
                  ),
                Container(
                   width: width*0.12,
                  height: height*0.15,
                decoration:const BoxDecoration(
                  color: primaryColor,
                   shape: BoxShape.circle
                ) ,
                child: IconButton(
                  onPressed: onPressed,
                   icon: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: whiteColor,
                    size:30,
                   )
                   ),
               ),]
             ),
           ),
         );
  }
}