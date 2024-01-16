import 'package:flutter/material.dart';
import 'package:relaq_ai/core/utils/constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key,required this.controller,required this.keyboardType,required this.hintText, this.obsecureText=false});
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String hintText;
  final bool obsecureText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:double.infinity,
      height:60,
      child: TextFormField(
        controller:controller,
        keyboardType:keyboardType,
        obscureText: obsecureText,
        style: const TextStyle(
          color: formFieldTextColor,
        ),
        decoration: InputDecoration(
         enabledBorder: buildOutlineInputBorder(),
            focusedBorder: buildOutlineInputBorder(),
            hintText:hintText,
            hintStyle: const TextStyle(
              color: formFieldTextColor,
            )
        ),
      ),
    );
  }
  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide:  const BorderSide(
        color: formFieldColor,
      ),
      borderRadius: BorderRadius.circular(30.0),
    );
  }
}