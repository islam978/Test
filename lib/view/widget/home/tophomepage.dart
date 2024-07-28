import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/constant/sizeconfig.dart';

class TopHomePage extends StatelessWidget {
  const TopHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var  height = SizeConfig.screenHeight;
    var  width = SizeConfig.screenWidth;
    return Container(
       child:Column(crossAxisAlignment: CrossAxisAlignment.start,
           children:[
        Text("Current Balance",
          style: TextStyle(fontSize:18 ,fontFamily:"SF" ,fontWeight:FontWeight.w500,color: Color.fromRGBO(135, 135, 135, 1)
          ),),
         SizedBox(height:SizeDoubleExt(5).h() ,),
         Text("\$2,85,856.20",
              style: TextStyle(fontSize:height/SizeDoubleExt(35).h() ,fontFamily:"SF" ,fontWeight:FontWeight.w700,color: Color.fromRGBO(81, 99, 191, 1)

              )),]),
    );
  }
}
