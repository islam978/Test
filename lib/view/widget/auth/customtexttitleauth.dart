
import 'package:flutter/material.dart';
import 'package:untitled/core/constant/color.dart';
import '../../../core/constant/sizeconfig.dart';
class CustomTextTitleAuth extends StatelessWidget {
  final String title;
  const CustomTextTitleAuth({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top:SizeDoubleExt(109).h()),

      child: FittedBox(
          child: Text(title,style:const TextStyle(fontSize:22 ,fontFamily:"POPPINS" ,color: AppColor.colorBegin))),
    );
  }
}
