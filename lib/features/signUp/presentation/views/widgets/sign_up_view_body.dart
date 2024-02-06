import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:relaq_ai/core/utils/routes.dart';
import 'package:relaq_ai/core/utils/styles.dart';
import 'package:relaq_ai/features/signUp/presentation/manager/cubit/sign_up_cubit.dart';

import '../../../../../core/widgets/custom_text_form_field.dart';
import 'google_option_sign_up.dart';
import 'sign_up_row.dart';

class SignUpViewBody extends StatelessWidget {
  SignUpViewBody({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if(state is SignUpSuccessState||state is GoogleUserSignUpSuccessState){
           GoRouter.of(context).push(AppRouter.kHomeView);
        }
      },
      builder: (context, state) {
         var cubit= SignUpCubit.get(context);
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Create an\naccount', style: Styles.textStyle40),
                const SizedBox(height: 20),
                CustomTextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'email',
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomTextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  hintText: 'password',
                  obsecureText: true,
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomTextFormField(
                  controller: confirmPasswordController,
                  keyboardType: TextInputType.visiblePassword,
                  hintText: 'confirm password',
                  obsecureText: true,
                ),
                const SizedBox(height: 10),
                SignUpRow(
                  onPressed: () {
                    cubit.signUPWithEmailAndPassword(
                       email: emailController.text,
                       password: passwordController.text
                       );
                  },
                ),
                const GoogleOptionSignUp(),
              ],
            ),
          ),
        );
      },
    );
  }
}
