import 'package:flutter/material.dart';
import 'package:relaq_ai/core/utils/styles.dart';

class GoogleOption extends StatelessWidget {
  const GoogleOption({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('sign in with',
        style: Styles.textStyle15,),
        Image(
          image: AssetImage('assets/images/Google.png'),
          )
      ],
      