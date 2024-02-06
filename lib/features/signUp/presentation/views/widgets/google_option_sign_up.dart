import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relaq_ai/core/utils/styles.dart';
import 'package:relaq_ai/features/signUp/presentation/manager/cubit/sign_up_cubit.dart';

class GoogleOptionSignUp extends StatelessWidget {
  const GoogleOptionSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        var cubit=SignUpCubit.get(context);
        return Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'sign Up with',
                  style: Styles.textStyle15,
                ),
              ],
            ),
            const SizedBox(
              height: 7,
            ),
            InkWell(
              onTap: () {
                cubit.signUpWithGoogle();
              },
              child: const Image(
                image: AssetImage('assets/images/Google.png'),
              ),
            )
          ],
        );
      },
    );
  }
}
