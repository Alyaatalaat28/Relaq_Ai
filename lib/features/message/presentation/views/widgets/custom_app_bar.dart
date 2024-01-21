import 'package:flutter/material.dart';
import 'package:relaq_ai/core/utils/constants.dart';
import 'ai_information.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: whiteColor,
          ), 
          onPressed: () {  },
        ),
         const AiInformation(),
         Container(),
      ],
      );
  }
}