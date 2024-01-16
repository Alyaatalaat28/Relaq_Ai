import 'package:flutter/material.dart';
import 'package:relaq_ai/core/utils/styles.dart';
import 'package:relaq_ai/core/widgets/custom_button.dart';

class SendCodeRow extends StatelessWidget {
  const SendCodeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
      children: [
        Text('Send Code',
         style:Styles.textStyle30,
       ),
         Spacer(),
         CustomIconButton(),
         
      ],
    );
  }
}