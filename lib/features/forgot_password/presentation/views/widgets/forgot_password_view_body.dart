import 'package:flutter/material.dart';
import 'package:relaq_ai/core/utils/styles.dart';
import 'package:relaq_ai/core/widgets/custom_text_form_field.dart';

import 'send_code_row.dart';

class ForgotPasswordViewBody extends StatelessWidget {
   ForgotPasswordViewBody({super.key});
 final TextEditingController emailController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Forgot\npassword?',
            style:Styles.textStyle40
            ),
            const SizedBox(height:20),
            CustomTextFormField(
              controller: emailController, 
              keyboardType: TextInputType.emailAddress, 
              hintText: 'Enter your email address',
              ),          
            const SendCodeRow(),
          ],
        ),
      ),
    );
  }
}