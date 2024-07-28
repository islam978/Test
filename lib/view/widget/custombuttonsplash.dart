
import 'package:flutter/material.dart';
import '../../../core/constant/sizeconfig.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../../../core/constant/color.dart';

class CustomButtonSplash extends StatelessWidget {
  final String textButton ;
  final  void Function()? onPressed;
  final Color colorBegin;
   final  bool face;
  final double radius;
  final double width;
  final double height;
  final String image;
  const CustomButtonSplash({super.key, required this.textButton, required this.onPressed, required this.colorBegin, required this.radius, required this.width, required this.height, required this.face, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top:25,),
      child: Container(
        height:SizeDoubleExt(53.5).h(),
        decoration: BoxDecoration(border: Border.all(color: Colors.white,width: 1),
          borderRadius: BorderRadius.circular(100),
          //BorderRadius.circular(SizeDoubleExt(radius).w()),
        color: colorBegin,
        ),
        child:MaterialButton(onPressed: onPressed,
            padding: EdgeInsets.symmetric(vertical: SizeDoubleExt(15).h(),
              horizontal: SizeDoubleExt(10).w()
            ),
            //  color: AppColor.primaryColor,
            textColor: face?Colors.white:Color.fromRGBO(103, 103, 103, 1),
            child: Row(
              children: [Container(margin: EdgeInsets.only(left:SizeDoubleExt(10).w(),
                  right: SizeDoubleExt(10).w(),),
                child: Image.asset(image,width: SizeDoubleExt(25).w(),height: SizeDoubleExt(45).h(),),decoration: BoxDecoration(
                border: Border.all(color: face?Colors.white: Color.fromRGBO(23, 120, 242, 1)),
                  borderRadius: BorderRadius.circular(100)),),
                FittedBox(child: Padding(padding:EdgeInsets.only(right:SizeDoubleExt(10).w(),),child: Text(textButton,style: TextStyle(fontWeight:FontWeight.w500, fontSize:18,fontFamily: "POPPINS"),))),

              ],
            )),
      ),
    );
  }
}
