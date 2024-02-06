import 'package:flutter/material.dart';
import 'package:relaq_ai/core/utils/styles.dart';
import 'package:relaq_ai/core/widgets/custom_button.dart';

class SendCodeRow extends StatelessWidget {
  const SendCodeRow({super.key,this.onPressed});
  final void Function()?onPressed;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Text('Send Code',
         style:Styles.textStyle30,
       ),
         const Spacer(),
         CustomIconButton(
          onPressed:onPressed,
         ),
         
      ],
    );
  }
}