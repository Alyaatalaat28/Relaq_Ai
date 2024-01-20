import 'package:flutter/material.dart';
import 'package:relaq_ai/core/utils/styles.dart';

import '../../../../../core/widgets/avatar.dart';
import 'follow_button.dart';

class FollowOption extends StatelessWidget {
  const FollowOption({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Avatar(
          radius: 25.0,
        ),
        const SizedBox(
          width: 10,
          ),
        Text('Relaq Ai',
        style: Styles.textStyle18.copyWith(
          fontSize: 15,
        ),),
        const Spacer(),
        const FollowButton(), 
        ],
    );
  }
}