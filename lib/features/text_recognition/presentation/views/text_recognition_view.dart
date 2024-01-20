import 'package:flutter/material.dart';
import 'package:relaq_ai/features/text_recognition/presentation/views/widgets/text_recognition_view_body.dart';

class TextRecognitionView extends StatelessWidget {
  const TextRecognitionView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body:TextRecognitionViewBody(),
      ),
    );
  }
}