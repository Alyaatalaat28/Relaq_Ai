import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key,this.radius=10});
  final double radius;
  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      radius: radius,
      backgroundImage: const AssetImage('assets/images/avatar.png'),
    );
  }
}