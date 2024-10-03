import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wine_lovers/Create_account/create_account.dart';

import '../Controllers/Button_controller/button_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize= MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        height: screenSize.height*100,
        width: screenSize.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.centerRight,
            colors: [
              Color(0xff379A37),
              Color(0xff77DD77)
            ]),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
               SizedBox(height: 57.h),
              Image.asset('assets/images/onboarding wine.png',fit: BoxFit.cover,),
               SizedBox(height: 54.h),
              Text('Connecting wine lovers worldwide with every sip',
               textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 32.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),),
               SizedBox(height: 35.h),
              Text('Made for wine lovers, by wine lovers',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                // fontWeight: FontWeight.normal,
                color: Colors.white
              ),),
               SizedBox(height: 60.h),
              CommonUseButton(
                height: 69.h,
                width: 348.w,
                text: 'Create account',
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color:  const Color(0xff44A744),
                borderradius: BorderRadius.circular(100),
                onPressed: () {
                  Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => const CreateAccount()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
