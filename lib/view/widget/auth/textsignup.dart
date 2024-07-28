
import 'package:flutter/material.dart';
import '../../../core/constant/sizeconfig.dart';

import '../../../../core/constant/color.dart';

class CustomTextSignUpOrSignIn extends StatelessWidget {
  final String textOne;
  final String textTwo;
  final Color color;
  final void Function() onTap;
  const CustomTextSignUpOrSignIn(
      {Key? key,
        required this.textOne,
        required this.textTwo,
        required this.onTap, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       Expanded(
      flex:3,
            child:
           FittedBox(
               child:
    Text(textOne,
      //textAlign: TextAlign.center,
        style: TextStyle(
        color: Color.fromRGBO(51, 102, 204, 0.6),
        fontSize: SizeDoubleExt(17).w(),
        fontFamily: "POPPINS",
        fontWeight: FontWeight.w400),),
   ),),
      //),
  //  Expanded(child:
    Expanded(
      flex: 1,
      child: InkWell(
            onTap: onTap,

              child:
             FittedBox(fit: BoxFit.scaleDown,
                child:
                Text(textTwo,
                  //  textAlign: TextAlign.center,
    style: TextStyle(
    color: color,
    fontSize: SizeDoubleExt(17).w(),
    fontFamily: "POPPINS",
    fontWeight: FontWeight.w600),)),
              ),
            ),

      //  )
      ],
    );
  }
}