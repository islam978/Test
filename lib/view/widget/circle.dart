import 'package:flutter/material.dart';

import '../../core/constant/color.dart';
import '../../core/constant/sizeconfig.dart';
class Circle extends StatelessWidget {
  final double width ;
  final double height;
  final double right ;
  final double top;
  final double left;
  final Widget child;
  const Circle({super.key, required this.width, required this.height, required this.child,  required this.top, required this.left, this.right=0,});

  @override
  Widget build(BuildContext context) {
    return  Padding(padding:EdgeInsets.only(left:SizeDoubleExt(left).w(),
    right:SizeDoubleExt(right).w() ,
    top:SizeDoubleExt(top).h()),
        child:Container(width:SizeDoubleExt(width).w() ,height: SizeDoubleExt(height).h() ,
    child:CircleAvatar(backgroundColor: AppColor.colorCircle,
        child: child)));
  }
}
