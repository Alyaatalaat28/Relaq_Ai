import 'package:flutter/material.dart';
import 'ai_guide.dart';
import 'ai_image.dart';
import 'ai_tools.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           AiImage(),
           AiGuide(),
           AiTools(),
        ],
        ),
      ),
    );
  }
}