import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextBodyAuth extends StatelessWidget {
  final String bodyAuth;
  const CustomTextBodyAuth({super.key, required this.bodyAuth});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
      child:Text(bodyAuth,
          textAlign: TextAlign.center,
          style:Theme.of(context).textTheme.bodyText2)
    );
  }
}
