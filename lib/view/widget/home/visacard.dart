import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/core/constant/color.dart';
import 'package:untitled/core/constant/image_asset.dart';
import '../../../../core/constant/sizeconfig.dart';
class VisaCard extends StatelessWidget {
  const VisaCard({super.key});

  @override
  Widget build(BuildContext context) {
    var  height = SizeConfig.screenHeight;
    var  width = SizeConfig.screenWidth;
    return  Container(decoration: BoxDecoration(
      border: Border.all(
        color: Color.fromRGBO(81, 99, 191, 1.0),
        width: 1

      ),
        borderRadius: BorderRadius.circular(20)),
      width:SizeDoubleExt(307).w() ,
      child:Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:[
            Expanded(
              child: Image.asset(fit:BoxFit.cover,
              AppImageAsset.visa,height: SizeDoubleExt(200).h(),width: SizeDoubleExt(32).w(),),
            ),

       Expanded(flex:3,
           child: ListTile(title: Text("VISA",style: TextStyle(fontSize:9 ,fontWeight:FontWeight.w500 ,fontFamily:"SF" ),),
         subtitle: Container(padding: EdgeInsets.only(top:SizeDoubleExt(7).h() ),
             child: Row(
               children: [
               Text("Master Card",style: TextStyle(fontSize:9 ,fontWeight:FontWeight.w500 ,fontFamily:"SF" )),
              Text("    . 6531",style: TextStyle(fontSize:9,fontWeight:FontWeight.w500 ,fontFamily:"SF" ),),
               ],
             )),
           )),
               Container(padding: EdgeInsets.only(right: 5,bottom: 5,left: 5),
                   child: Text("\$758964.10",style: TextStyle(fontSize:9 ,color:AppColor.primaryColor,fontWeight:FontWeight.w500 ,fontFamily:"SF" ),)),

      ])


    );
  }
}
