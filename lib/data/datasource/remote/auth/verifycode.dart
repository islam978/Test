

import '../../../../core/class/crud.dart';
import '../../../../linkapi.dart';


class VerifyCodeData {
  Crud crud;

  VerifyCodeData(this.crud);


  checkCodeData(String verificationCode,String email) async {
    var response = await crud.postData(AppLink.verifyCode,{
     "email":email,
      "verifycode":verificationCode,

    });
    return response.fold((l) => l, (r) => r);
  }

  reSendVerifyCodeLogin(String email) async{
    var response = await crud.postData(AppLink.resendVerifyCode,{
      "email":email,
    });
    return response.fold((l) => l, (r) => r);
  }
}