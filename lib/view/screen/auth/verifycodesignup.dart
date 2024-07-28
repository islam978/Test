
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';


import '../../../../core/class/handlingdataview.dart';
import '../../../../core/class/statusrequest.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/constant/image_asset.dart';
import '../../../controller/verifycodesignup_controller.dart';
import '../../widget/auth/customtextbodyauth.dart';
import '../../widget/auth/customtexttitleauth.dart';


class VerfiyCodeSignUp extends StatelessWidget {

  const VerfiyCodeSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(VerifyCodeSignUpControllerImp());
    return Scaffold(

      body: GetBuilder<VerifyCodeSignUpControllerImp>(
      builder:(controller){
       return

      Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: HandlingDataView( statusRequest: controller.statusRequest,widget: ListView(children: [
          const SizedBox(height: 20),
          const CustomTextTitleAuth(title: "check code",),
          const SizedBox(height: 10),
        CustomTextBodyAuth(
              bodyAuth: "Please Enter The Digit Code Sent To ${controller.email!}"),
          const SizedBox(height: 15),
          OtpTextField(
            fieldWidth: 50.0,
            borderRadius: BorderRadius.circular(20),
            numberOfFields: 5,
            borderColor: const Color(0xFF512DA8),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              controller.checkCode(verificationCode,controller.email!);
              //   controller.goToSuccessSignUp();
            }, // end onSubmit
          ),
          const SizedBox(height: 40),
          InkWell(onTap: (){
            controller.reSend() ;
          },
            child: const Center(
                child:  Text("Resend verify code" ,
                  style: TextStyle(color: AppColor.primaryColor , fontSize: 15 ),)),)
        ]),)

      );
    }
      )
    );
  }
}