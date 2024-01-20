import 'package:flutter/material.dart';
import '../../../../../core/utils/constants.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({super.key,required this.icon,this.onPressed});
  final Widget icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: const BoxDecoration(
        color:formFieldTextColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: IconButton(
          onPressed: onPressed,
           icon: icon),
      ),
    );
  }
}