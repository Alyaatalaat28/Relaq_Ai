import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:relaq_ai/core/utils/constants.dart';
import 'package:relaq_ai/core/utils/routes.dart';
import 'package:relaq_ai/core/utils/styles.dart';

import 'custom_button.dart';
import 'custom_login_button.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.sizeOf(context).height;
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical:50),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/images/Releq_ai.png'),
            ),
            const SizedBox(
              height:5),
            const Text('Be with ai tools',
            style:Styles.textStyle18,
            ),
               SizedBox( 
                height:height*0.16),
              const CustomLoginButton(),
              CustomButton(
              text: 'SignUp',
              backGroundColor: whiteColor,
              textColor: primaryColor,
               onPressed: (){
                     GoRouter.of(context).push(AppRouter.kSignUpView);
                  },
              ),
            
          ],
        ),
      ),
    );
  }
}