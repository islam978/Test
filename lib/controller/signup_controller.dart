
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingData.dart';
import '../../data/datasource/remote/auth/signup.dart';
import '../core/constant/routes.dart';
import '../core/functions/checkinternet.dart';


abstract class SignUpController extends GetxController{
  signUp();
  goToSignIn();



}

class SignUpControllerImp extends SignUpController{

  GlobalKey<FormState> formState2 = GlobalKey<FormState>();
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  late TextEditingController confirmPassword;
   StatusRequest? statusRequest;
  SignUpData signUpData = SignUpData(Get.find());

  @override
  signUp() async {
    var formData = formState2.currentState;
    if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      print("LLLLLL00");
      print(phone.text);
      var response = await signUpData.postData(username.text, password.text, email.text, phone.text,);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoute.verifyCodeSignUp  ,arguments: {
            "email" : email.text
          });
        } else {
          Get.defaultDialog(title: "ُWarning" , middleText: "Phone Number Or Email Already Exists") ;
          statusRequest = StatusRequest.none;
        }
          //data.addAll(response['data']);
        }

     update();
      //Get.delete<SignUpControllerImp>();
    } else {
      print("Not Valid");
    }

  }


  @override
  void onInit() {
    username = TextEditingController();
     phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    confirmPassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    username.dispose();
    phone.dispose();
    confirmPassword.dispose();

    super.dispose();
  }

  @override
  goToSignIn() {
    Get.toNamed(AppRoute.login);
  }

   bool checkPassword(){
    return password == confirmPassword;
  }

}