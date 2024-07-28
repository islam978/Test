import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/controller/homescreen_controller.dart';
import 'package:untitled/core/constant/color.dart';
import 'package:untitled/view/widget/auth/topcard.dart';
import 'package:untitled/view/widget/home/customappbar.dart';
import 'package:untitled/view/widget/home/tophomepage.dart';
import 'package:untitled/view/widget/home/visacard.dart';
import '../../../../core/constant/sizeconfig.dart';
import '../../../core/class/handlingdataview.dart';
import '../../widget/home/custombottomappbar.dart';
import '../../widget/home/customcardclient.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeScreenControllerImp());
    return Scaffold(bottomNavigationBar: SizedBox(height:SizeDoubleExt(80).h() ,child:CustomBottomAppBar()),
      body: GetBuilder<HomeScreenControllerImp>(
        builder: (context) {
          return HandlingDataView(statusRequest: controller.statusRequest,
            widget: Container(margin: EdgeInsets.only(top:SizeDoubleExt(50).h() ,left:SizeDoubleExt(15).w(),right:SizeDoubleExt(15).w() ),
             // height: SizeConfig.screenHeight,
                  child:ListView(
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomAppBar(),

                        TopHomePage(),
              SizedBox(height:SizeDoubleExt(40).h()),
                          SizedBox(height:SizeDoubleExt(80).h() ,
                            child: ListView.separated(
                              separatorBuilder: (context, index) =>
                              const SizedBox(width: 10),
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: 5,
                              itemBuilder: (ctx, index) {
                                return VisaCard();
                              },),
                          ),
                        TopCard(text: "Incoming Transactions"),
                        SizedBox( height: SizeDoubleExt(198).h(),
                          child: ListView.separated(
                            separatorBuilder: (context, index) =>
                            const SizedBox(width: 10),
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: controller.incomeClient.length,
                            itemBuilder: (ctx, index) {
                              return CustomCardClient(
                                image: controller.incomeClient[index].clientImage!,
                                icon: Icons.arrow_forward,
                                colorbegin:AppColor.colorCircle,colorEnd: AppColor.colorEndWave,
                              );
                            },),
                        ),
                          TopCard(text: "Outgoing Transactions"),
                SizedBox( height: SizeDoubleExt(198).h(),child:
                        ListView.separated(
                          separatorBuilder: (context, index) =>
                          const SizedBox(width: 10),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: controller.outClient.length,
                          itemBuilder: (ctx, index) {
                            return CustomCardClient(
                              image: controller.outClient[index].clientImage!,
                              icon: Icons.arrow_back,
                              colorbegin: AppColor.colorbWave,colorEnd: AppColor.coloreWave,);
                          },),),

                      ],),
                    ],
                  )


            ),
          );
        }
      )
    );
  }
}
