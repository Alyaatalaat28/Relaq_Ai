import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:relaq_ai/core/utils/constants.dart';
import 'package:relaq_ai/core/utils/routes.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
      const Spacer(),
      TextButton(
        onPressed: () { 
           GoRouter.of(context).push(AppRouter.kForgotPassword);
         },
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