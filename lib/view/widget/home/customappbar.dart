
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../../controller/homescreen_controller.dart';
import '../../../../core/constant/sizeconfig.dart';
import '../../../core/constant/color.dart';
import 'custombuttonappbar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return
    Container(margin: EdgeInsets.only(bottom: SizeDoubleExt(15).h()),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

                 Padding(
                   padding:  EdgeInsets.only(left:SizeDoubleExt(5).w(),bottom:SizeDoubleExt(10).h() ),
                   child: Icon(Icons.dehaze, size: 25,),),

      Padding(
      padding:  EdgeInsets.only(bottom:SizeDoubleExt(10).h()) ,
      child:Stack(
        children: [
          Icon(Icons.notifications_none, size: 25,),
          Positioned(
              top: SizeDoubleExt(2).h(),
              left:SizeDoubleExt(15).w(),
              child: CircleAvatar(backgroundColor: AppColor.red, radius: 3,))
        ],
      ),),
      ],
      ),
    );
  }
}