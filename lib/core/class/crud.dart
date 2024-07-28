import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


import 'package:http/http.dart' as http;
import 'package:untitled/core/class/statusrequest.dart';

import '../constant/routes.dart';
import '../functions/checkinternet.dart';

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
    var response  ;
    try {
      if (await checkInternet()) {
           print("mmm");
         response = await http.post(Uri.parse(linkurl), body: data);
         print("   response ${response.body}");
        if (response.statusCode == 200 || response.statusCode == 201) {
          print("hhhhhhhtrue");
          print("   response ${response.body}");
          Map responsebody = jsonDecode(response.body);
          print("hhhhhhhtrue   $responsebody");
          print("lllllllll ${response.body}");
          print("hhhhhhhhhhhhhhhhhh $responsebody") ;
         // return ;
         return Right(responsebody);
        } else {
          response = await http.post(Uri.parse(linkurl), body: data);
          print("sssssss ${response.body}");
          Get.toNamed(AppRoute.errorScreen);
          return const Left(StatusRequest.none);
        }
      } else {
        Get.toNamed(AppRoute.errorScreen);
        return const Left(StatusRequest.none);
      }
    } catch (_) {
      Get.toNamed(AppRoute.errorScreen);
     print("ssjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj");
      return const Left(StatusRequest.none);
    }
  }
}

