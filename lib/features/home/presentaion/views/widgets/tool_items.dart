import 'package:flutter/material.dart';

import 'tool_item.dart';

class ToolItems extends StatelessWidget {
  const ToolItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
         Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AiToolItem(
                  assetName:('assets/images/Rectangle477.png'),
                   text: 'Chat With Relaq Ai',
                  ),
                AiToolItem(
                  assetName:('assets/images/Rectangle480.png'),
                   text: 'Object Detection and Tracking',
                  ),
              ],
            ),
            SizedBox(
              height:20.0,
            ),
           Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AiToolItem(
                  assetName:('assets/images/Rectangle477.png'), 
                  text: 'Image Labeling',
                  ),
                AiToolItem(
                  assetName:('assets/images/Rectangle480.png'), 
                  text: 'Text Recognition',
                  ),
              ],
            ),
      ],
    );
  }
}