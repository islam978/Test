
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../core/constant/routes.dart';
import '../../../core/constant/sizeconfig.dart';
import 'package:untitled/core/constant/image_asset.dart';

import '../../../core/constant/color.dart';
import '../../widget/circle.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(backgroundColor: Colors.white,
        body:
          Container(
            child:Column(children:[
       Stack(children: [
         Circle(
             left: 130,
             right: 0,
             top: 111,
             width:15.25 ,height: 15.25,
             child: Container()),

          Circle(right:0,
                  left:60,
                  top: 309,
                  width:9.3 ,height: 9.3,
                  child: Container()),
          Circle(left:307,
                  top: 358,
                  width:9.3 ,height: 9.3,
                  child: Container()),
          Circle(left: 84,
             right: 84,
             top: 150,
             width:208 ,height: 208,
             child: Image.asset(AppImageAsset.correct,height: SizeDoubleExt(80).h() ,width:  SizeDoubleExt(91).w(),)),
          Circle(width: 9.5, height: 9.5, child: Container(), top: 3, right: 0,left:220),
       ],),


              Padding(padding:EdgeInsets.only(left:SizeDoubleExt(37).w(),
                  right:SizeDoubleExt(37).w(),
                  top:SizeDoubleExt(87).h()),
                child: const FittedBox(
                  child: Text("Congrats!",style: TextStyle(
                    fontFamily: "SF",
                      fontSize:55 ,
                    color: AppColor.primaryColor

                  ),),
                ),
              ),
              Padding(padding:EdgeInsets.only(left:SizeDoubleExt(16).w(),top:SizeDoubleExt(50).h()),
              child:FittedBox(
                child: Text("Account Registered",style: TextStyle(fontSize: 16,
                    fontFamily: "SF",
                    color: Colors.grey),),
              ),),
              Padding(padding:EdgeInsets.only(left:SizeDoubleExt(16).w()),
                  child: FittedBox(
                    child: Text("Successfully",style: TextStyle(fontSize:16,
                    color: Colors.grey
              ),),
                  ),),
              Padding(padding:EdgeInsets.only(left:SizeDoubleExt(111).w(),
              right:SizeDoubleExt(111).w(),
                  top:SizeDoubleExt(90).h()),
                  child:Container(width: SizeDoubleExt(153).w(),
                    height: SizeDoubleExt(59).h(),
                    child: MaterialButton(
                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(SizeDoubleExt(50).w())),
                onPressed: (){
                  Get.offNamed(AppRoute.homeScreen);
                },
                color:AppColor.primaryColor,
                child: Center(child: FittedBox(child: Text("Great!",style: TextStyle(fontSize: 22,color: Colors.white,fontFamily: "SF"),))),
              ),
                  ))

            ])
          ),



    );
  }
}
