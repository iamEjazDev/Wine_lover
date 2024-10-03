import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wine_lovers/Bottomnav/bottom_nav.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Controllers/Button_controller/button_controller.dart';
import 'package:wine_lovers/Controllers/text_field_controller/text_field_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 143.h),
              Text('Nice to see you again!',
              style: GoogleFonts.nunito(
                fontSize: 35.sp,
                fontWeight: FontWeight.w700
              ),),
              Text('log in to get started',
              style: GoogleFonts.nunito(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500
              ),),
              SizedBox(height: 90.h),
              Align(
                alignment: Alignment.topLeft,
                child: Text('Username',
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                )),
              ),
              CommonUseTfield(
                hintText: 'Enter Username',
                textStyle: GoogleFonts.nunito(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xffB0B0B0)
                ),),
                SizedBox(height: 30.h),
                Align(
                alignment: Alignment.topLeft,
                child: Text('Password',
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  fontWeight: FontWeight.w500
                )),
              ),
              CommonUseTfield(
                suffixIcon: Image.asset('assets/icons/eye-close.png'),
                obscureText: true,
                hintText: '********',
                textStyle: GoogleFonts.nunito(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xffB0B0B0)
                ),),
                SizedBox(height: 143.h),
                 Text('Or',
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                  ),),
                  SizedBox(height: 22.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height:50.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: const Color(0xff1E1E1E)
                          ),
                          shape: BoxShape.circle
                        ),
                        child: Image.asset('assets/icons/google.png',),
                      ),
                      SizedBox(width: 30.w),
                        Container(
                        height:50.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: const Color(0xff1E1E1E)
                          ),
                          shape: BoxShape.circle
                        ),
                        child: Image.asset('assets/icons/apple.png',),
                      ),
                      SizedBox(width: 30.w),
                        Container(
                        height:50.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: const Color(0xff1E1E1E)
                          ),
                          shape: BoxShape.circle
                        ),
                        child: Image.asset('assets/icons/facebook.png',),
                      ),
                    ],
                  ),
                  SizedBox(height: 47.h),
                  CommonUseButton(
                    height: 69.h, 
                    width: 348.w, 
                    text: 'Log in', 
                    fontSize: 15, 
                    fontWeight: FontWeight.w700, 
                    color: Colors.white,
                    backgroundColor: const Color(0xff77DD77), 
                    borderradius: BorderRadius.circular(100),
                    onPressed: () {
                      Get.to(Bottomnav());
                    },),
            ],
          ),
        ),
      ) ,
    );
  }
}