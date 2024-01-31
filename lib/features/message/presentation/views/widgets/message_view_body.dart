import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'meesage_content.dart';
import 'message_sender.dart';

class MessageViewBody extends StatelessWidget {
  const MessageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          CustomAppBar(),
          MessageContent(),
          MessageSender(),
        ],
      ),
    );
  }
}