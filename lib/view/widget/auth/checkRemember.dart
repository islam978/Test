import 'package:flutter/material.dart';
import '../../../core/constant/sizeconfig.dart';

class CheckRemember extends StatelessWidget {
  const CheckRemember({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child:Row(
      mainAxisAlignment: MainAxisAlignment.start,

      children: [Checkbox(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: SizeDoubleExt(20).w()),
            borderRadius: BorderRadius.circular(6)),
      value: false, onChanged: (bool? value) {  },),
      Text("Remember Me",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300,fontFamily: "POPPINS",color: const Color.fromRGBO(
          30, 30, 30, 1.0)),)




    ],));
  }
}
