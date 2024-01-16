import 'package:flutter/material.dart';
import 'package:relaq_ai/core/utils/constants.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
      const Spacer(),
      TextButton(
        onPressed: () {  },
         child: const Text('Forgot Password?',
         style: TextStyle(
            color:primaryColor,
            fontWeight: FontWeight.bold,
         ),
         ),
      ),
      ]
    );
  }
}