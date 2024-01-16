import 'package:flutter/material.dart';
import 'package:relaq_ai/core/utils/styles.dart';

import '../../../../../core/widgets/custom_text_form_field.dart';
import 'google_option_sign_up.dart';
import 'sign_up_row.dart';

class SignUpViewBody extends StatelessWidget {
   SignUpViewBody({super.key});
 final TextEditingController emailController=TextEditingController();
final TextEditingController passwordController=TextEditingController();
final TextEditingController confirmPasswordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
     return  Padding(
      padding: const EdgeInsets.all(25.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Create an\naccount',
            style:Styles.textStyle45
            ),
            const SizedBox(height:25),
            CustomTextFormField(
              controller: emailController, 
              keyboardType: TextInputType.emailAddress, 
              hintText: 'email',
              ),
              const SizedBox(height: 15,),
              CustomTextFormField(
              controller: passwordController, 
              keyboardType: TextInputType.visiblePassword, 
              hintText: 'password',
              obsecureText: true,
              ),
               const SizedBox(height: 15,),
              CustomTextFormField(
              controller: confirmPasswordController, 
              keyboardType: TextInputType.visiblePassword, 
              hintText: 'confirm password',
              obsecureText: true,
              ),
             const SizedBox(height:10    ),
             const SignUpRow(),
             const GoogleOptionSignUp(),
        
          ],
        ),
      ),
    );
  }
}