import 'package:flutter/material.dart';
import 'package:relaq_ai/core/widgets/image_upload.dart';

class ObjectRecognitionViewBody extends StatelessWidget {
  const ObjectRecognitionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UploadImageOptions(),
      ],
    );
  }
}