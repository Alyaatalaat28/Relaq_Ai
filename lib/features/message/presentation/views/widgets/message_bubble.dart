import 'package:flutter/material.dart';
import 'package:relaq_ai/core/utils/constants.dart';

class MessageBubble extends StatelessWidget {
  final String sender;
  final String message;

  const MessageBubble({super.key, required this.sender, required this.message});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: sender == 'user' ? Alignment.topRight : Alignment.topLeft,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: sender == 'user' ? primaryColor:whiteColor ,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Text(
            message,
            style:  TextStyle(
              color: sender == 'user' ?whiteColor:scaffColor,
              ),
          ),
        ),
      ),
    );
  }
}