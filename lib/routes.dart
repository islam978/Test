import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:untitled/view/screen/auth/loginscreen.dart';
import 'package:untitled/view/screen/auth/signupscreen.dart';
import 'package:untitled/view/screen/auth/verifycodesignup.dart';
import 'package:untitled/view/screen/errorscreen.dart';
import 'package:untitled/view/screen/home/homescreen.dart';
import 'package:untitled/view/screen/splashscreen1.dart';
import 'package:untitled/view/screen/auth/success_signup.dart';

import 'core/constant/routes.dart';
List<GetPage<dynamic>>? routes = [
GetPage(name: "/", page:() => const SplashScreen2()),


GetPage(name: AppRoute.login, page: () => const Login()),
GetPage(name: AppRoute.signUp, page: () => const SignUp()),
GetPage(name: AppRoute.verifyCodeSignUp, page: () => const VerfiyCodeSignUp ()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessScreen()),
  GetPage(name: AppRoute.homeScreen, page: () => const HomePage()),
  GetPage(name: AppRoute.errorScreen, page: () => const ErrorScreen()),
];