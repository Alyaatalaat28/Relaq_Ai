import 'package:flutter/material.dart';
import 'package:relaq_ai/features/forgot_password/presentation/views/widgets/forgot_password_view_body.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:Scaffold(
        body:ForgotPasswordViewBody(),
      )
    );
  }
}