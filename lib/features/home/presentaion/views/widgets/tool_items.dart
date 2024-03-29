import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:relaq_ai/core/utils/routes.dart';

import 'tool_item.dart';

class ToolItems extends StatelessWidget {
  const ToolItems({super.key});

  @override
  Widget build(BuildContext context) {
        return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AiToolItem(
                  assetName:('assets/images/Rectangle477.png'),
                   text: 'Chat With Relaq Ai',
                   onTap:(){
                    GoRouter.of(context).push(AppRouter.kMessage);
                   }
                  ),
                AiToolItem(
                  assetName:('assets/images/Rectangle480.png'),
                   text: 'Object Detection and Tracking',
                    onTap:(){
                    GoRouter.of(context).push(AppRouter.kObjectRecognitionView);
                   }
                  ),
              ],
      
    );
  }
}