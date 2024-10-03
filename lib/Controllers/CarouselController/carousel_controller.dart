import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wine_lovers/Controllers/Button_controller/button_controller.dart';

class CarouselController extends GetxController {
  var currentIndex = 0.obs;

  get selectedIndex => null;

  void updateIndex(int index) {
    currentIndex.value = index;
  }

  void selectIndex(int index) {}
}


class WineCaresoulCard extends StatelessWidget {
  const WineCaresoulCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return 
        Container(
          height: 177.h,
          decoration: BoxDecoration(
            gradient: const RadialGradient(
              colors: [ Color(0xff74DA74),Color(0xff379A37),],
            ),
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Stack(
            children: [
                 Align(
                  alignment: Alignment.centerRight,
                   child: Image.asset(
                     'assets/images/product_wine.png',
                     height: 171.h,
                     width: 188.w,
                   ),
                 ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Wine tasting @ Ona Winebar at 9:00 PM',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
                 Text(
                   'Reserve your Place \nnow',
                   style: GoogleFonts.inter(
                     color: Colors.white,
                     fontSize: 21.sp,
                     fontWeight: FontWeight.w700,
                   ),
                 ),
          CommonUseButton(
            height: 38.h, 
            width: 125.w, 
            text: 'Reservation', 
            fontSize: 11.sp, 
            fontWeight: FontWeight.w500, 
            color: Colors.green, 
            borderradius: BorderRadius.circular(6.47),
            onPressed: () {}),
            ],
          ),
        ),
     
            ],
          ),
        );
  }
}
