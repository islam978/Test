
import 'package:get/get.dart';

import '../../core/class/statusrequest.dart';
import '../../core/constant/routes.dart';
import '../../core/functions/handlingData.dart';
import '../data/datasource/remote/auth/verifycode.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode(String verificationCode,String email);
  goToSuccessSignUp();
  reSend();
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {

  String? email;

  StatusRequest? statusRequest;

  late String verifycode  ;

  VerifyCodeData verifyCodeData = VerifyCodeData(Get.find());

  @override
  void onInit() {
    email = Get.arguments['email'];

    super.onInit();
  }

  @override
  checkCode(String verificationCode,String email) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verifyCodeData.checkCodeData(verificationCode,email);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success"){
        goToSuccessSignUp();
        //data.addAll(response['data']);
      } else {
        Get.defaultDialog(title: "ُWarning" , middleText: "Incorrect verificationCode") ;
        statusRequest = StatusRequest.none ;
      }
    }
    update();
  }

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoute.successSignUp);
  }
  @override
  reSend()  {
    verifyCodeData.reSendVerifyCodeLogin(email!);
  }




}