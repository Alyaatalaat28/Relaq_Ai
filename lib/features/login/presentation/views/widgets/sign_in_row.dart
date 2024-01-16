import 'package:flutter/material.dart';
import 'package:relaq_ai/core/utils/styles.dart';
import 'package:relaq_ai/core/widgets/custom_button.dart';

class SignInRow extends StatelessWidget {
  const SignInRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
      children: [
        Text('Sign In',
         style:Styles.textStyle30,
       ),
         Spacer(),
         CustomIconButton(),
         
      ],
    );
  }
}