import 'package:flutter/material.dart';
import 'ai_information.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         const AiInformation(),
         Container(),
      ],
      );
  }
}