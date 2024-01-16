import 'package:flutter/material.dart';
import 'package:relaq_ai/core/utils/styles.dart';
import 'package:relaq_ai/core/widgets/custom_button.dart';

class SignUpRow extends StatelessWidget {
  const SignUpRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
      children: [
        Text('Sign Up',
         style:Styles.textStyle30,
       ),
         Spacer(),
         CustomIconButton(),
      ],
    );
  }
}