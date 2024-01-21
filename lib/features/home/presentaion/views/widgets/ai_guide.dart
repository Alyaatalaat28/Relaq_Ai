import 'package:flutter/material.dart';
import 'package:relaq_ai/core/utils/styles.dart';
import 'package:relaq_ai/features/home/presentaion/views/widgets/folllow_option.dart';

class AiGuide extends StatelessWidget {
  const AiGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Relaq Ai guide',
          style:Styles.textStyle20
          ),
           const SizedBox(
           height: 20,
          ),
          const FollowOption(),
           const SizedBox(
           height: 10,
          ),
          Text('Welcome to the Relaq Ai App! In this interactive learning experience, youll delve into the world of language models and explore the capabilities of Relaq Ai, a state-of-the-art AI-powered conversational agent.',
          maxLines: 4,
          style:Styles.textStyle18.copyWith(
            fontSize: 13,
          ),),        
        ],
      ),
    );
  }
}