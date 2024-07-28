
import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';
import '../../../../core/constant/sizeconfig.dart';
class CustomButtonAppBar extends StatelessWidget {
  final IconData iconData;
  final void Function()? onPressed ;
  final bool activeColor;
  const CustomButtonAppBar({super.key, required this.iconData,
     this.onPressed, required this.activeColor});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: MaterialButton(
        onPressed: onPressed,child:  activeColor ?
      CircleAvatar(backgroundColor: AppColor.colorBegin,
          child:Container(width:SizeDoubleExt(24).w(),height:SizeDoubleExt(24).h(),
            child: Icon(
              iconData,color: Colors.white,),
          )) : Icon(iconData,color: AppColor.colorCircle,)),
    );
  }
}
