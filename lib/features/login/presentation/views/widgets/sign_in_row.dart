import 'package:flutter/material.dart';
import 'package:relaq_ai/core/utils/styles.dart';
import 'package:relaq_ai/core/widgets/custom_button.dart';

class SignInRow extends StatelessWidget {
  const SignInRow({super.key,this.onPressed});
 final void Function()?onPressed;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Text('Sign In',
         style:Styles.textStyle30,
       ),
         const Spacer(),
         CustomIconButton(
           onPressed:onPressed,
         ),
         
      ],
    );
  }
}