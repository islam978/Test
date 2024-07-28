import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/core/constant/image_asset.dart';
import '../../../../core/constant/sizeconfig.dart';
import '../../../core/constant/color.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../linkapi.dart';
import '../customtext.dart';
class CustomCardClient extends StatelessWidget {
  final Color colorbegin;
  final Color colorEnd;
  final IconData icon;
  final String image;
  const CustomCardClient({super.key, required this.colorbegin, required this.colorEnd, required this.icon, required this.image});

  @override
  Widget build(BuildContext context) {
    return
      Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(SizeDoubleExt(20). w())),
      //margin: EdgeInsets.only(left:  SizeDoubleExt(12).w()),
      width: SizeDoubleExt(157).w(),
      //height: SizeDoubleExt(198).h(),
      child: Card(
        child: Stack(
          children: [
            Positioned(
                top:  SizeDoubleExt(7).h(),
                left: SizeDoubleExt(12).w(),
                child: CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0),
                  child:CachedNetworkImage(imageUrl: '${AppLink.image}/test/${image}',
                    width:SizeDoubleExt(40).w() ,height:SizeDoubleExt(40).h() ,),)),
            Positioned(
                top:  SizeDoubleExt(57).h(),
                left: SizeDoubleExt(12).w(),
                child: CustomText(text: "From", fontSize: 5, fontWeight: FontWeight.w500, fontFamily: 'SF', color: AppColor.black,)),
            Positioned(
                top:  SizeDoubleExt(65).h(),
                left: SizeDoubleExt(10).w(),
                child: CustomText(text: "Johnny\nBairstow", fontSize: 7, fontWeight: FontWeight.w700, fontFamily: 'SF',color: AppColor.black,)),
            Positioned(
                left:SizeDoubleExt(147.73).w() ,
                top:  SizeDoubleExt(20).h(),
                child:
                    Transform(

                        transform: Matrix4.rotationZ(2.356),
                        //2.356,
                        child: Icon(icon,size:SizeDoubleExt(18).h() ,color:colorbegin)),),


                Positioned(
                    left:SizeDoubleExt(75).w() ,
                    top:  SizeDoubleExt(32).h(),
                    child: FittedBox(child: Text("+\$54.23",style: TextStyle(fontFamily: "SF",fontSize:10 ,color: colorbegin,fontWeight:FontWeight.normal ,)))


                ),


                Positioned(top:SizeDoubleExt(80).h(),
                child: ShaderMask(
                  shaderCallback: (bounds) {
                    return LinearGradient(
                      colors: [ colorEnd,colorbegin],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ).createShader(bounds);
                  },
                  blendMode: BlendMode.srcIn,
                  child: SvgPicture.asset(
                    fit:BoxFit.fitWidth,
                    AppImageAsset.left,
                    theme: SvgTheme(currentColor:Colors.transparent,xHeight:SizeDoubleExt(110).h() ),// تأكد من أنك أضفت ملف SVG في مجلد assets
                   // width: SizeDoubleExt(157).h(),
                   //height:SizeDoubleExt(110).h(),
                  ),),),


           /*  Container(
              width: double.infinity,
              height: 200,
              child: CustomPaint(
                painter: WavePainter(),
              ),
            ),*/

    /*  Positioned(top: 130  ,
        child: ClipPath(
          clipper: WaveClipper(), //applying our custom clipper
          child: Opacity(
            opacity: 0.5,
            child: Container(padding: EdgeInsets.only(top: 15),
              color: Colors.redAccent,
              width: SizeDoubleExt(187.5).w(),
              height: SizeDoubleExt(115.5).h(),
            ),*/
       /*   Positioned(top:SizeDoubleExt(80).h(),
          child: ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                colors: [ colorEnd,colorbegin],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(bounds);
            },
            blendMode: BlendMode.srcIn,child:
            CustomPaint(
              size: Size(SizeDoubleExt(157).h(), SizeDoubleExt(110).h()),
              painter: CurvePainter(colorbegin,colorEnd),
            ),),),*/
          Positioned(left:SizeDoubleExt(20).w(),
              top:SizeDoubleExt(170).h(), child: CustomText(fontWeight: FontWeight.w400, color: AppColor.black, fontFamily: 'SF', text: '23 December 2020', fontSize: 3,)),
          ],


    )));
  }
}
class CurvePainter extends CustomPainter {
   final  Color  color ;
    final Color color2 ;
    CurvePainter( this.color, this.color2);


  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
     // ..color =
      ..style = PaintingStyle.fill;

    final Path path = Path()
      ..moveTo(0, size.height)
      ..lineTo(0, size.height * 0.6)
      ..quadraticBezierTo(
          size.width * 0.25, size.height * 0.4, size.width * 0.5, size.height * 0.6)
      ..quadraticBezierTo(
          size.width * 0.75, size.height * 0.8, size.width, size.height * 0.4)
      ..lineTo(size.width, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}