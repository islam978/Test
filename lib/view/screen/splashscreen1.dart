import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/core/constant/image_asset.dart';
import 'package:untitled/core/constant/routes.dart';
import 'package:untitled/view/widget/custombuttonsplash.dart';
import '../../core/constant/color.dart';
import '../../core/constant/sizeconfig.dart';
class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> with SingleTickerProviderStateMixin
   {
     late AnimationController _controller;
     late Animation<double> _moveAnimation;
     late Animation<double> _flipAnimation;
     late Animation<double> _dropAnimation;
     late Animation<double> _finalAnimation;
     late Animation<double> _resetAnimation;

     bool _animationCompleted = false;

     @override
     void initState() {
       super.initState();

       _controller = AnimationController(
         duration: Duration(milliseconds: 2400),
         vsync: this,
       )..addStatusListener((status) {
         if (status == AnimationStatus.completed) {
           setState(() {
             _animationCompleted = true;
           });
         }
       });

       // Define the move animation
       _moveAnimation = Tween<double>(begin: -2.0, end: 0.4).animate(
         CurvedAnimation(
           parent: _controller,
           curve: Interval(0.0, 0.3, curve: Curves.easeInOut),
         ),
       );

       // Define the flip animation
       _flipAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
         CurvedAnimation(
           parent: _controller,
           curve: Interval(0.3, 0.6, curve: Curves.easeInOut),
         ),
       );

       // Define the drop animation
       _dropAnimation = Tween<double>(begin: 0.0, end: -0.2).animate(
         CurvedAnimation(
           parent: _controller,
           curve: Interval(0.6, 0.9, curve: Curves.easeInOut),
         ),
       );

       // Start the animation
       _controller.forward();
     }


     void dispose() {
       _controller.dispose();
       super.dispose();
     }
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return      Container(
    decoration:  const BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [AppColor.colorBegin,AppColor.background1],),),
    child:Scaffold(
      backgroundColor: Colors.transparent,
      body:
      Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                final flipValue = _flipAnimation.value;
                final scaleX = (flipValue < 0.5) ? 1.0 : -1.0;

                return Column(
                  children: [
                    Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.translationValues(
                        0.0,
                        MediaQuery.of(context).size.height * (_moveAnimation.value + _dropAnimation.value  ),
                        0.0,
                      )

                        ..scale(scaleX, 1.0),
                      child: child,
                    ),
                  ],
                );
              },
              child: Image.asset(AppImageAsset.logo,
                width: SizeDoubleExt(229.5).w(),
                height:SizeDoubleExt(229.5).h()
              ),

            ),
          ),
          if (_animationCompleted)
            Positioned(
              top:  SizeDoubleExt(330).h(),
              left: SizeDoubleExt(42.96).w(),
                right: SizeDoubleExt(42.96).w(),
              child:
                Column(
                  children: [
                    Text("Lorem ipsum",style: TextStyle(fontSize:20.9 ,fontWeight:FontWeight.w700 ,fontFamily: "SF",color: Colors.white),),
                    Padding(
                      padding:  EdgeInsets.only(top:SizeDoubleExt(8).h()),
                      child: Text("Excepteur sint occaecat cupidatat \n non proident,  sunt in culpa qui officia deserunt\n mollit anim id est laborum.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize:7 ,fontWeight:FontWeight.w400 ,fontFamily: "SF",color: Colors.white,),),
                    ),
                CustomButtonSplash(width: 0,
                  textButton: 'Sign Up With Facebook',
                  colorBegin: Color.fromRGBO(23, 120, 242, 1),

                  onPressed: () {},
                  radius: 100,
                  face: true,
                  height: 0,
                  image: AppImageAsset.face,),

                    CustomButtonSplash(width: 0,
                      textButton: 'Sign Up With Facebook',
                      colorBegin: Colors.white,

                      onPressed: () {},
                      radius: 100,
                      face: false,
                      height: 0,
                      image: AppImageAsset.google,),
              // CustomTextSignUpOrSignIn(textOne: "", textTwo: "", onTap: (){}, color: Colors.black)
                    Padding(
                      padding:  EdgeInsets.only(top:SizeDoubleExt(25).h(),left:SizeDoubleExt(10).w(), right:SizeDoubleExt(10).w()),
                      child: Row(
                        children: [


                            FittedBox(
                              child:
                              Text("Already have an account?",
                                //textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: "SF",
                                    fontWeight: FontWeight.w400),),
                            ),
                          //),
                          //  Expanded(child:
                        InkWell(
                              onTap: (){
                                Get.offAllNamed(AppRoute.login);
                              },

                              child:
                              FittedBox(fit: BoxFit.scaleDown,
                                  child:
                                  Text("Sign In",
                                    //  textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: "SF",
                                        fontWeight: FontWeight.w600),)),
                            ),


                          //  )
                        ],
                      ),),

        ],
      ),
            ),


   ] )));
  }
}



