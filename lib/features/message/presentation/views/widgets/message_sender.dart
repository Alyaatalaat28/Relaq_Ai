import 'package:flutter/material.dart';

import 'message_field.dart';

class MessageSender extends StatelessWidget {
  const MessageSender({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
              children:[ 
                Positioned(
                  bottom: 0,
                 left: 0,
                 right: 0,
                  child: MessageField()
                  )
                ]),
    );
  }
}