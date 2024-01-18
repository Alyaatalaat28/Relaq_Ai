import 'package:flutter/material.dart';
import 'package:relaq_ai/core/utils/constants.dart';

// ignore: must_be_immutable
class MessageField extends StatelessWidget {
   MessageField({super.key});
  TextEditingController messageController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity ,
      height:56 ,
      padding:const EdgeInsets.only(left:10.0),
      decoration:  const BoxDecoration(
        color: kMesFieldColor,
        borderRadius: BorderRadius.all(
          Radius.circular(30)),
      ),
      child: TextFormField(
        controller:messageController ,
        keyboardType:TextInputType.text ,
        style:const TextStyle(
          color: kMesTextColor,
        ) ,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText:'Write your message' ,
          hintStyle:const TextStyle(
            color: kMesTextColor,
          ) ,
          suffixIcon: IconButton(
          onPressed: (){},
           icon: const Icon(
            Icons.send_rounded,
            color: primaryColor,
           )),
        ),
      ),
    );
  }
}