import 'package:flutter/material.dart';
import 'package:relaq_ai/features/object_recognition/presentation/views/widgets/object_recognition_view_body.dart';

class ObjectRecognitionView extends StatelessWidget {
  const ObjectRecognitionView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body:ObjectRecognitionViewBody() ,
      ),
    );
  }
}