

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/class/handlingdataview.dart';
import 'package:untitled/view/widget/auth/checkRemember.dart';


import '../../../../core/constant/image_asset.dart';
import '../../../controller/signup_controller.dart';
import '../../../core/constant/color.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/auth/custombuttonauth.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtexttitleauth.dart';
import '../../widget/auth/textsignup.dart';
import '../../../core/constant/sizeconfig.dart';


class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(



        body: Container(   margin: EdgeInsets.only(left:SizeDoubleExt(41).w() ,right:SizeDoubleExt(41).w() ),
          child: Form(
                      key:controller.formState2,
                      child: GetBuilder<SignUpControllerImp>(
                        builder: (context) {
                          return HandlingDataView(statusRequest: controller.statusRequest,
                            widget: ListView(children:  [
                              const CustomTextTitleAuth(title: "Sign Up Your account"),
                              CustomTextFormAuth(hintText: "username", labelText: "Username",
                                 controller:controller.username,
                                  validator: (val)=>
                                      validInput(val!, 5, 50, "username"),
                                  isNumber:false,

                              ),
                              CustomTextFormAuth(hintText: "09********",
                                labelText: "Number",
                                  controller: controller.phone,
                                validator: (val) =>
                                    validInput(val!, 5, 15, "phone"),

                                isNumber: true,
                              ),
                              CustomTextFormAuth(hintText: "username@gmail.com", labelText: "Email",
                                  controller:controller.email,
                                  validator: (val)=>
                                      validInput(val!, 5, 100, "email"),
                                  isNumber:false

                              ),
                              CustomTextFormAuth(hintText: "**********", labelText: "Password",
                                  controller:controller.password,
                                  obscureText: true,
                                  validator: (val)=>
                                      validInput(val!, 5, 50, "password"),
                                  isNumber:false

                              ),
                              CustomTextFormAuth(hintText: "**********", labelText: "Confirm Your Password",
                                   obscureText: true,
                                   controller:controller.confirmPassword,
                                  validator: (val){
                                    if(val != controller.password.text)
                                      return 'Not Match';
                                      validInput(val!, 5, 50, "password");

                              },
                                  isNumber:false

                              ),
                              SizedBox(height: SizeDoubleExt(25).h(),),
                              CustomButtonAuth(textButton: "Sign Up", onPressed: () {
                                  controller.signUp();
                                // Get.toNamed(AppRoute.onBoarding);
                              }, colorBegin: AppColor.colorBegin,
                                width: 293, colorEnd: AppColor.colorEnd,
                                height: 47,
                                radius: 10,),
                              const CheckRemember(),
                              CustomTextSignUpOrSignIn(
                                color: AppColor.colorBegin,
                                textOne:"Already have an account?",textTwo:"Log In" ,onTap: (){
                                controller.goToSignIn();
                              },)
                            ],),
                          );
                        }
                      ),




    ),
        ));
  }
}
