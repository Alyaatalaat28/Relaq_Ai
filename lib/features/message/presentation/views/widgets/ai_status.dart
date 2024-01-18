import 'package:flutter/material.dart';
import 'package:relaq_ai/core/utils/styles.dart';

class AiStatus extends StatelessWidget {
  const AiStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('Relaq Ai',
        style: Styles.textStyle20.copyWith(
          fontSize: 15.0,
        ),),
        const Row(
          children: [
           Image(
            image: AssetImage('assets/images/Ellipse20.png'),
              width:5.0,
              height:5.0,
            ),
            SizedBox(width:5.0),
            Text('Online',
            style: Styles.textStyleG15,),
          ],
        ),
      ],
    );
  }
}