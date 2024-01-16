import 'package:flutter/material.dart';
import 'package:relaq_ai/core/utils/constants.dart';

import 'custom_button.dart';

class CustomLoginButton extends StatelessWidget {
  const CustomLoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SizedBox(
      width:double.infinity,
      child: Align(
        alignment: Alignment.center,
        child: Stack(
         alignment: Alignment.center,
          children: [
            Image(
              image:AssetImage('assets/images/Rectangle.png'),
            ),
            CustomButton(
                  text: 'Login',
                  backGroundColor: primaryColor,
                  textColor: whiteColor,
                  ),
                  ]
        ),
      ),
    );
  }
}