import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:relaq_ai/core/utils/routes.dart';
import 'package:relaq_ai/core/utils/styles.dart';
import 'package:relaq_ai/core/widgets/custom_text_form_field.dart';
import 'package:relaq_ai/features/login/presentation/manager/cubit/login_cubit.dart';
import 'package:relaq_ai/features/login/presentation/views/widgets/sign_in_row.dart';
import 'forgot_password.dart';
import 'google_option.dart';

class LoginViewBody extends StatelessWidget {
   LoginViewBody({super.key});
final TextEditingController emailController=TextEditingController();
final TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit,LoginState>(
      listener: (context, state) {
        if(state is LoginSuccessState||state is GoogleUserSignInSuccessState) {
          GoRouter.of(context).push(AppRouter.kHomeView);
        }
      },
      builder: (context, state) {
        var cubit=LoginCubit.get(context);
        return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Welcome\nBack!',
            style:Styles.textStyle40
            ),
            const SizedBox(height:20),
            CustomTextFormField(
              controller: emailController, 
              keyboardType: TextInputType.emailAddress, 
              hintText: 'email',
              ),
              const SizedBox(height: 12,),
               CustomTextFormField(
              controller: passwordController, 
              keyboardType: TextInputType.visiblePassword, 
              hintText: 'password',
              obsecureText: true,
              ),
             const SizedBox(height:10    ),
             const ForgotPassword(),
              SignInRow(
              onPressed: (){
                cubit.userLogin(
                  email: emailController.text, 
                  password: passwordController.text
                  );
              },
             ),
             const GoogleOption(),
        
          ],
        ),
      ),
    );
    }
    );
  }
}