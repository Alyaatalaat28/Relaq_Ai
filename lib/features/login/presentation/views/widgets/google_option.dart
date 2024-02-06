import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relaq_ai/core/utils/styles.dart';
import 'package:relaq_ai/features/login/presentation/manager/cubit/login_cubit.dart';

class GoogleOption extends StatelessWidget {
  const GoogleOption({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        var cubit=LoginCubit.get(context);
        return Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'sign in with',
                  style: Styles.textStyle15,
                ),
              ],
            ),
            const SizedBox(
              height: 7,
            ),
            InkWell(
              onTap: () {
                cubit.signInWithGoogle();
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
