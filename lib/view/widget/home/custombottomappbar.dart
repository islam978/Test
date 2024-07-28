import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import '../../../../core/constant/sizeconfig.dart';
import '../../../controller/homescreen_controller.dart';
import 'custombuttonappbar.dart';
class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    
  Get.put(HomeScreenControllerImp());
    var  height = SizeConfig.screenHeight;
    var  width = SizeConfig.screenWidth;
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) {
       return Container(
         margin: EdgeInsets.only(right:SizeDoubleExt(15).w() ,left:SizeDoubleExt(15).w() ,bottom:SizeDoubleExt(20).h() ),
           decoration: BoxDecoration(
             color: Colors.white,
     
    borderRadius: BorderRadius.circular(20)),

    width:SizeDoubleExt(305).w() ,
    child:
    Row(
    children: [
    ...List.generate(controller.page.length ,((index){
    return Expanded(
      child: CustomButtonAppBar(
        onPressed: (){
          controller.changePage(index);
        },
      iconData:controller.bottomAppBar[index]["icon"], activeColor: controller.currentPage == index,
      ),
    );
    }))]));
  });
  }
}
