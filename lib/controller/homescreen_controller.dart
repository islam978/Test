

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:untitled/core/constant/image_asset.dart';
import 'package:untitled/data/model/client.dart';

import '../core/class/statusrequest.dart';
import '../core/functions/handlingData.dart';
import '../data/datasource/remote/home.dart';
import '../view/screen/home/homescreen.dart';

class HomeScreenControllerImp extends GetxController{


  HomeData homeData = HomeData(Get.find());
  List<Client> incomeClient=  [];
  List<Client> outClient=  [];
  late StatusRequest statusRequest ;

  int currentPage =0;
  List bottomAppBar = [


    {"icon": Icons.home_outlined},
    {"icon": Icons.wallet},
    {"icon":    Icons.bar_chart,},
    {"icon": Icons.person_outline,},


  ] ;

  @override
  getData() async{
    statusRequest = StatusRequest.loading;
    var response = await homeData.getData();
    print("=============================== Controller $response ");
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {


       List list1 = response['incometransaction']['data'];
         incomeClient = list1.map((e) => Client.fromJson(e)).toList();

         List list2= (response['outtransaction']['data']);
         outClient = list2.map((e) => Client.fromJson(e)).toList();

      }
      else {
        Get.defaultDialog(title: "ُWarning", middleText: "try other time");
        statusRequest = StatusRequest.failure;
      }
    }
    else if (statusRequest == StatusRequest.failure) {
      Get.defaultDialog(title: "ُWarning", middleText: "try other time");
    }
    update();
  }

  List page = [
    const HomePage(),
    const HomePage(),
    const HomePage(),
    const HomePage(),


    //const Setting(),
  ];
  //Client();
 /*  List<Clients> client = [


     Clients(AppImageAsset.person1,"Johnny\nBairstow","+\$54.23","in"),
     Clients(AppImageAsset.person2,"Johnny\nBairstow","+\$54.23","in"),
     Clients(AppImageAsset.person4,"Johnny\nBairstow","+\$54.23","in"),
     Clients(AppImageAsset.person3,"Johnny\nBairstow","+\$54.23","in"),
   ];*/
  changePage(index){

    currentPage = index;
    update();
  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }

}