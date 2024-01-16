import 'package:flutter/material.dart';
import 'package:relaq_ai/core/utils/styles.dart';
import 'package:relaq_ai/core/widgets/custom_text_form_field.dart';
import 'package:relaq_ai/features/login/presentation/views/widgets/sign_in_row.dart';

import 'forgot_password.dart';

class LoginViewBody extends StatelessWidget {
   LoginViewBody({super.key});
final TextEditingController emailController=TextEditingController();
final TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Welcome\nBack!',
          style:Styles.textStyle48
          ),
          const SizedBox(height:30),
          CustomTextFormField(
            controller: emailController, 
            keyboardType: TextInputType.emailAddress, 
            hintText: 'email',
            ),
            const SizedBox(height: 20,),
             CustomTextFormField(
            controller: passwordController, 
            keyboardType: TextInputType.visiblePassword, 
            hintText: 'password',
            obsecureText: true,
            ),
           const SizedBox(height:10    ),
           const ForgotPassword(),
           const SignInRow(),
      
        ],
      ),
    );
  }
}