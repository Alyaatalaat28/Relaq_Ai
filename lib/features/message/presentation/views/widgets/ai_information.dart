import 'package:flutter/material.dart';

import 'ai_status.dart';
import 'avatar.dart';

class AiInformation extends StatelessWidget {
  const AiInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
         Avatar(
          radius:25,
         ),
         SizedBox(width: 10.0,),
         AiStatus(),
      ],
    );
  }
}