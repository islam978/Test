import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/constant/color.dart';
import 'package:untitled/view/widget/auth/checkRemember.dart';

import '../../../controller/login_controller.dart';
import '../../../core/class/handlingdataview.dart';
import '../../../core/constant/routes.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtexttitleauth.dart';
import '../../widget/auth/textsignup.dart';
import '../../../core/constant/sizeconfig.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
        body: GetBuilder<LoginControllerImp>(builder: (controller) {
              return Container(
                  margin: EdgeInsets.only(
                      left: SizeDoubleExt(41).w(), right: SizeDoubleExt(41).w()),
                  child: HandlingDataView(
                    statusRequest: controller.statusRequest,
                    widget: Form(
                      key: controller.formState,
                      child: ListView(
                        children: [
                          // const LogoAuth(),
                          CustomTextTitleAuth(title: "Log in to your account"),
                          CustomTextFormAuth(
                            hintText: "09********",
                            labelText: "Number",
                            controller: controller.phone,
                            validator: (val) =>
                                validInput(val!, 5, 15, "Phone"),
                            isNumber: true,
                            sign: false,
                          ),
                          CustomTextFormAuth(
                            hintText: "**********",
                            labelText: "Password",
                            obscureText: true,
                            controller: controller.password,
                            validator: (val) =>
                                validInput(val!, 5, 30, "password"),
                            isNumber: false, sign: false,
                          ),
                          SizedBox(
                            height: SizeDoubleExt(25).h(),
                          ),
                          CustomButtonAuth(
                            textButton: "Log in",
                            onPressed: () {
                              controller.login();
                            },
                            colorBegin: AppColor.colorBegin,
                            width: 293,
                            colorEnd: AppColor.colorEnd,
                            height: 47,
                            radius: 10,
                          ),
                          SizedBox(height: SizeDoubleExt(25).h()),
                          CheckRemember(),
                          Padding(
                            padding: EdgeInsets.only(
                                right: SizeDoubleExt(1).w(),
                                left: SizeDoubleExt(1).w()),
                            child: Text(
                                "Lorem ipsum dolor Lorem ipsum dolor Lorem ipsum.",
                                maxLines: 2,
                                style: TextStyle(
                                    fontFamily: "POPPINS",
                                    fontWeight: FontWeight.w300,
                                    fontSize: SizeDoubleExt(13).h())),
                          ),
                          SizedBox(height: SizeDoubleExt(40).h()),
                          CustomTextSignUpOrSignIn(
                            color: AppColor.colorEnd,
                            textOne: "Don’t have an account? ",
                            textTwo: "SignUp",
                            onTap: () {
                              controller.goToSignUp();
                            },
                          )
                        ],
                      ),
                    ),
                  ));
            }));
  }
}
