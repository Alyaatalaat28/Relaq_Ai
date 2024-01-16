import 'package:flutter/material.dart';
import 'package:relaq_ai/core/utils/constants.dart';
import 'package:relaq_ai/core/utils/styles.dart';

class SignUpRow extends StatelessWidget {
  const SignUpRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Text('Sign Up',
         style:Styles.textStyle32,
       ),
         const Spacer(),
         Align(
          alignment:Alignment.center,
           child: SizedBox(
             height: 145,
             child: Stack(
              alignment:Alignment.center,
               children: [
                const Image(
                  image:AssetImage('assets/images/Ellipse.png')
                  ),
                Container(
                  width: 58,
                  height: 60,
                decoration:const BoxDecoration(
                  color: primaryColor,
                   shape: BoxShape.circle
                ) ,
                child: IconButton(
                  onPressed: (){},
                   icon: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: whiteColor,
                    size:30,
                   )
                   ),
               ),]
             ),
           ),
         ),
      ],
    );
  }
}