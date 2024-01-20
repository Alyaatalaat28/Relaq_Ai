import 'package:flutter/material.dart';
import 'package:relaq_ai/core/utils/constants.dart';

import 'icon_container.dart';

class AiImage extends StatelessWidget {
  const AiImage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Container(
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(40),
          ) ,
          child: const Image(
            image: AssetImage('assets/images/Background.png'),
            width: double.infinity,
            height:200 ,
            fit: BoxFit.fill,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconContainer(
                icon: Icon(
                   Icons.arrow_back,
                   color: whiteColor,
                ),
                ),
              IconContainer(
                icon: Icon(
                   Icons.favorite_rounded,
                   color: whiteColor,
                ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}