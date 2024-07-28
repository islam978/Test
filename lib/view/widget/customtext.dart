import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final String fontFamily;
  final FontWeight fontWeight;
  final Color color;
  const CustomText({super.key, required this.text, required this.fontSize, required this.fontFamily, required this.fontWeight, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontFamily: fontFamily,fontWeight: fontWeight,fontSize: fontSize,color: color),);
  }
}
