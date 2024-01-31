import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relaq_ai/features/message/presentation/manager/cubit/app_cubit.dart';

import 'message_bubble.dart';

class MessageContent extends StatelessWidget {
  const MessageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<AppCubit,AppState>(
      builder:(context,state){
        var cubit=AppCubit.get(context);
        if(cubit.chatMessages.isNotEmpty) {
          return Expanded(
              child: ListView.builder(
                itemCount: cubit.chatMessages.length,
                itemBuilder: (context, index) {
                  return MessageBubble(
                    sender: cubit.chatMessages[index]['sender']!,
                    message: cubit.chatMessages[index]['message']!,
                  );
                },
              ),
            );
        }else{
          return Container();
        }
            }
    );
  }
}