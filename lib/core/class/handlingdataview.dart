
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled/core/class/statusrequest.dart';

import '../constant/image_asset.dart';

class HandlingDataView extends StatelessWidget {

  final StatusRequest ? statusRequest;
  final Widget widget;
  const HandlingDataView({super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
      if (statusRequest == StatusRequest.loading) {
      return    Center(child: Lottie.asset(AppImageAsset.loading,width: 250,height: 250));
    } else if (statusRequest == StatusRequest.offlinefailure) {
      return  Center(child: Lottie.asset(AppImageAsset.offline,width: 250,height: 250));
    } else if (statusRequest == StatusRequest.serverfailure) {
        return Center(
            child: Lottie.asset(AppImageAsset.server, width: 250, height: 250));
      } else if (statusRequest == StatusRequest.failure) {
        return  Center(child: Lottie.asset(AppImageAsset.noData,width: 250,height: 250));
    }


    else {
      return widget;
          }

  }
}
