
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/core/constant/routes.dart';
import '../../core/constant/sizeconfig.dart';
import 'package:untitled/core/constant/image_asset.dart';

import '../../core/constant/color.dart';
import '../widget/auth/custombuttonauth.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return
      Scaffold(backgroundColor: AppColor.grey2,
        body:Stack(
          children: [
         /*   Positioned(
                top: SizeDoubleExt(16.97).h(),
                left: SizeDoubleExt(171).w(),
                child:
                Transform.rotate(
                //  alignment: Alignment.centerRight,
                    angle:0.7854,child:
                Container(
                  decoration: BoxDecoration(borderRadius:BorderRadius.circular(SizeDoubleExt(200).w()),color: AppColor.grey3 ),

                    height: SizeDoubleExt(150).h(),width:SizeDoubleExt(363.41).w()))),*/
          //rectangle
            Positioned(
              top: SizeDoubleExt(96).h(),
              left: SizeDoubleExt(116.31).w(),
              child:Transform.rotate(
             //   alignment: Alignment.topRight,
                angle:-0.7854,child:
                   Container(

                  //decoration: BoxDecoration(borderRadius: BorderRadius.circular(SizeDoubleExt(200).h() ),
                    color: AppColor.grey3,

                  width: SizeDoubleExt(17.41).w(),
                  height:SizeDoubleExt(17.41).h() ,
                  //



                ),),

            ),
            //circle
            Positioned(
              top: SizeDoubleExt(667).h(),
              left: SizeDoubleExt(251).w(),
              child:
              Container(

                decoration: BoxDecoration(borderRadius: BorderRadius.circular(SizeDoubleExt(200).h() ),
                color: AppColor.grey3,),

                width: SizeDoubleExt(25).w(),
                height:SizeDoubleExt(25).h() ,
                //



              ),),



            //topLeft
            Positioned(

              top:SizeDoubleExt(-81).h() ,
              left:SizeDoubleExt(-241).w(),
              child: Container(

                decoration: BoxDecoration(borderRadius: BorderRadius.circular(SizeDoubleExt(200).h() ),
                  color: AppColor.grey3,
                ),
                width: SizeDoubleExt(283).w(),
                height:SizeDoubleExt(283).h() ,
                //


              ),

            ),
            //bottomLeft
            Positioned(

              top:SizeDoubleExt(668).h() ,
              left:SizeDoubleExt(-141).w(),
              child: Container(

                decoration: BoxDecoration(borderRadius: BorderRadius.circular(SizeDoubleExt(200).h() ),
                  color: AppColor.grey3,
                ),
                width: SizeDoubleExt(283).w(),
                height:SizeDoubleExt(283).h() ,
                //


              ),

            ),

               Positioned(

                top:SizeDoubleExt(16.97).h() ,
                left:SizeDoubleExt(171).w(),
                 child:Transform(

                   transform: Matrix4.rotationZ(-0.7854),
                 // alignment: Alignment.topCenter,
                   child: Container(

                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(SizeDoubleExt(200).h() ),
                    color: AppColor.grey3,
                  ),
                  width: SizeDoubleExt(363.41).w(),
                  height:SizeDoubleExt(254.51).h() ,
                  //


                ),

              ),
            ),
             //Image
            Positioned(
                  top:SizeDoubleExt(146).h(),
                  left:SizeDoubleExt(57).w(),
                  right:SizeDoubleExt(57).w(),
              child: Image.asset(AppImageAsset.error,
                height:SizeDoubleExt(204).h(),width:SizeDoubleExt(260.57).w() ,),
            ),
            //Text
           Positioned(top:SizeDoubleExt(407).h(),left:SizeDoubleExt(128).w(),right:SizeDoubleExt(128).w( ),
              child: FittedBox(child: Text("Oops!",style: TextStyle(fontSize:40,fontFamily: "DM_SANS", color: Colors.white,height: SizeDoubleExt(0.6).h())),),
            ),
            Positioned(top:SizeDoubleExt(459).h(),left:SizeDoubleExt(70).w(),right:SizeDoubleExt(70).w(),
            child:  FittedBox(child: Text("Something went wrong!",style: TextStyle(fontSize:20,fontFamily: "DM_SANS",fontWeight: FontWeight.w400 ,color: Colors.white,),))
            ),
            //Button
       Positioned(top: SizeDoubleExt(579).h(),left: SizeDoubleExt(44).w(),

              child: CustomButtonAuth(
                onPressed: () { Get.offNamed(AppRoute.homeScreen) ;}, colorBegin: AppColor.colorBeginButton,
                textButton: 'Back To HomePage', colorEnd: AppColor.colorEndButton, radius: 8,
                width: 287, height:52,),
            ),


          ],
        ),


    );
  }
}

