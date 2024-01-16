import 'package:flutter/material.dart';
import 'package:relaq_ai/core/utils/constants.dart';
import 'package:relaq_ai/core/utils/styles.dart';

class SignInRow extends StatelessWidget {
  const SignInRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Text('Sign In',
         style:Styles.textStyle48,
       ),
         const Spacer(),
         Stack(
           children: [
            const Image(
              image:AssetImage('assets/images/Ellipse.png')
              ),
            Container(
            decoration:const BoxDecoration(
              color: primaryColor,
               shape: BoxShape.circle
            ) ,
            child: IconButton(
              onPressed: (){},
               icon: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: whiteColor,
               )
               ),
           ),]
         ),
      ],
    );
  }
}