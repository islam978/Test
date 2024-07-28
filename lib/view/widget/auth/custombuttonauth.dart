
import 'package:flutter/material.dart';
import '../../../core/constant/sizeconfig.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../../../core/constant/color.dart';

class CustomButtonAuth extends StatelessWidget {
  final String textButton ;
  final  void Function()? onPressed;
  final Color colorBegin;
  final Color colorEnd;
  final double radius;
  final double width;
  final double height;
  const CustomButtonAuth({super.key, required this.textButton, required this.onPressed, required this.colorBegin, required this.colorEnd, required this.radius, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:SizeDoubleExt(width).w()  ,
        height:SizeDoubleExt(height).h(),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(SizeDoubleExt(radius).h()),
          //BorderRadius.circular(SizeDoubleExt(radius).w()),
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [colorEnd,colorBegin],
      ),
    ),
       // margin:const EdgeInsets.only(top: 10),
        child:MaterialButton(onPressed: onPressed,
          padding: EdgeInsets.symmetric(vertical: SizeDoubleExt(10).h(),
              //horizontal: SizeDoubleExt(116).w()
    ),
    //  color: AppColor.primaryColor,
      textColor: Colors.white,
      /*shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius)),*/
      child: FittedBox(child: Text(textButton,style: TextStyle(fontWeight:FontWeight.w500, fontSize:18,fontFamily: "POPPINS"),))),
   );
  }
}
