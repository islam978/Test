

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:untitled/core/functions/checkinternet.dart';


import '../../core/constant/routes.dart';
import '../core/class/statusrequest.dart';
import '../core/functions/handlingData.dart';
import '../data/datasource/remote/auth/login.dart';


abstract class LoginController extends GetxController{
 login();
 goToSignUp();

}
class LoginControllerImp extends LoginController{
  late TextEditingController phone;
  late TextEditingController password;
 // MyServices myServices = Get.find() ;
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  bool isshowpassword = true;
  LoginData loginData = LoginData(Get.find());
  StatusRequest ? statusRequest ;

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }


  @override
  login() async {
    var formData = formState.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
    /*  if(!checkInternet())
        Get.toNamed(AppRoute.errorScreen);*/
      print("LLLLLL00");
      var response = await loginData.postData(phone.text,  password.text,);
      print("=============================== Controller $response ");
    statusRequest =  handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success"){
           if(response['data']['user_approve'] == 1 ) {
            print( response['data']['email']);
           Get.offNamed(
                 AppRoute.homeScreen, arguments: {"username": phone.text});
           } else{
           //  var response = await loginData.sendVerifyCodeLogin(email.text);
             Get.offNamed(AppRoute.verifyCodeSignUp, arguments: {"email": phone.text});
           }
          //data.addAll(response['data']);
        }
        else {
          Get.defaultDialog(title: "ُWarning" , middleText: "Phone or password incorrect") ;
          statusRequest = StatusRequest.none;
        }
      }
      update();

    }
  }

  @override
  goToSignUp() {
   Get.offAllNamed(AppRoute.signUp);
  }

  @override
  void onInit() {
    phone = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    phone.dispose();
    password.dispose();
    super.dispose();
  }

}