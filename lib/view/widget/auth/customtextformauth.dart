
import 'package:flutter/material.dart';
import '../../../core/constant/sizeconfig.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hintText ;
  final String labelText ;
  final TextEditingController controller;
  final void Function()? onTapIcon;
  final bool? obscureText ;
  final bool isNumber;
  final bool sign;
  final  String? Function(String?)? validator;
   const CustomTextFormAuth({super.key, this.obscureText ,
     this.onTapIcon,required this.hintText, required this.labelText,
    required this.validator, required this.isNumber,  this.sign =true, required this.controller,

  });

  @override
  Widget build(BuildContext context) {

    return Container(
     margin:  EdgeInsets.only(top: SizeDoubleExt(30).h(),bottom:sign?SizeDoubleExt(1).h():SizeDoubleExt(5).h(),
          ),
      child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           // Padding(padding: EdgeInsets.only(left:41),
                Padding(padding:
                 EdgeInsets.only(bottom:SizeDoubleExt(7).h()),
                  child: FittedBox(
                      child: Text(

                    labelText,textAlign: TextAlign.left,
                    style: TextStyle(


                      fontSize:16,fontFamily:"POPPINS" ,fontWeight:FontWeight.w400  ),)),
                ),
            TextFormField(
              keyboardType: isNumber ?const TextInputType.numberWithOptions(decimal: true) :TextInputType.text,
              obscureText:  obscureText == null || obscureText ==  false ?false :true,
              validator:validator ,
              controller:controller ,
              decoration: InputDecoration(
              hintText: hintText,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintStyle:  TextStyle(fontSize: 16,color: Colors.grey),
                contentPadding:
                 EdgeInsets.only(top: SizeDoubleExt(8).h(),left: SizeDoubleExt(20).w()),
       //  labelText: labelText,

              /*  label:
                /*Container(

                   margin: const EdgeInsets.symmetric(horizontal: 9),*/
                  Text(labelText),*/


                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(SizeDoubleExt(10).w()))
            ),
            ),
          ],
        ),

    );
  }
}
