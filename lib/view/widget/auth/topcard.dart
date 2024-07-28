import 'package:flutter/material.dart';
import 'package:untitled/view/widget/customtext.dart';

class TopCard extends StatelessWidget {
  final  String text;
  const TopCard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      CustomText(text: text, fontSize: 14, fontFamily: "SF", fontWeight: FontWeight.w500, color: const Color.fromRGBO(
          135, 135, 135, 1.0)),
        TextButton(onPressed: (){}, child:  Row(
          children: const [
            CustomText(text: "see All", fontSize: 10, fontFamily: "SF", fontWeight: FontWeight.w400, color: Color.fromRGBO(81, 99, 191, 1),),
            Icon(Icons.arrow_forward_ios,size: 10,color:Color.fromRGBO(81, 99, 191, 1) ,)
          ],
        ),)
    ],);
  }
}


