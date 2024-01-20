import 'package:flutter/material.dart';
import 'package:relaq_ai/core/utils/styles.dart';
import 'package:relaq_ai/features/home/presentaion/views/widgets/tool_items.dart';

class AiTools extends StatelessWidget {
  const AiTools({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text('Ai tools',
            style:Styles.textStyle18.copyWith(
              fontSize: 24,
            ),
            ),
           const SizedBox(
              height:15.0,
            ),
           const ToolItems(),
        ],
      ),
    );
  }
}