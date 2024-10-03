import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wine_lovers/login_screen/login_screen.dart';
import '../Controllers/text_field_controller/text_field_controller.dart';
import 'package:wine_lovers/Controllers/Button_controller/button_controller.dart';
import 'package:wine_lovers/Controllers/switch_controller/switch_controller.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  
  SwitchController controller = Get.put(SwitchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34),
        child: Column(
          children: [
            SizedBox(height: 110.h),
            Align(
              alignment: Alignment.center,
              child: Text('Welcome',
              style: GoogleFonts.nunito(
                fontSize: 40.sp,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Text('Create an account to get started',
            style: GoogleFonts.nunito(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500
            ),),
            SizedBox(height: 34.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Private',
                  style: GoogleFonts.inter(
                    fontSize: 15.75.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: 13.w,),
                Obx(() =>  Switch(
                    value: controller.isPrivate.value, 
                    activeColor: Colors.white,
                    activeTrackColor: const Color(0xff77DD77),
                    inactiveThumbColor: const Color(0xff77DD77),
                    inactiveTrackColor: Colors.white,
                    onChanged: (value) {
                      controller.toggleSwitch(value);
                    },),
                ),
                SizedBox(width: 14.w),
                  Obx(() => Text('Restaurant',
                    style: GoogleFonts.inter(
                    fontSize: 15.75.sp,
                    fontWeight: FontWeight.w400,
                    color: controller.textColor.value
                    ),),
                  )
              ],
            ),
            Expanded(
              child:SingleChildScrollView(
                child: Column(
                  children: [
                      SizedBox(height: 34.h),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Username',
                  style: GoogleFonts.nunito(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),),
                ),
                 CommonUseTfield(
                   hintText: 'Username',
                   textStyle:  GoogleFonts.nunito(
                   fontSize: 15.sp,
                   fontWeight: FontWeight.w500,
                   color: const Color(0xffB0B0B0)
                  )
                ),
                SizedBox(height: 18.h),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Email',
                  style: GoogleFonts.nunito(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                   )),
                ),
                CommonUseTfield(
                  hintText: 'fathanah@gmail.com',
                  keyboardType: TextInputType.emailAddress,
                  textStyle:  GoogleFonts.nunito(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xffB0B0B0)
                )),
                 SizedBox(height: 18.h),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Password',
                  style: GoogleFonts.nunito(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                   )),
                ),
                CommonUseTfield(
                  hintText: '********',
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  suffixIcon: Image.asset('assets/icons/eye-close.png',),
                  textStyle:  GoogleFonts.nunito(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xffB0B0B0)
                )),
                SizedBox(height: 18.h),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Text('Land',
                        style: GoogleFonts.nunito(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        )),
                        SizedBox(width: 150.w),
                          Text('Provincie',
                        style: GoogleFonts.nunito(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),),
                        const Spacer()
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                     Expanded(
                       child: CommonUseTfield(
                        hintText: 'Country',
                        textStyle: GoogleFonts.nunito(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffB0B0B0)),
                          suffixIcon: const Icon(Icons.keyboard_arrow_down),),
                     ),
                     SizedBox(width: 20.w,),
                        Expanded( 
                          child:CommonUseTfield(
                          hintText: 'Province',
                          textStyle: GoogleFonts.nunito(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffB0B0B0)),
                          suffixIcon: const Icon(Icons.keyboard_arrow_down),),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 18.h),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('City',
                  style: GoogleFonts.nunito(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),),
                ),
                CommonUseTfield(
                  hintText: 'City',
                  textStyle: GoogleFonts.nunito(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xffB0B0B0)),
                  suffixIcon: const Icon(Icons.keyboard_arrow_down)),
                  SizedBox(height: 18.h),
                   Align(
                  alignment: Alignment.topLeft,
                  child: Text('Street name and number',
                  style: GoogleFonts.nunito(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),),
                ),
                CommonUseTfield(
                  hintText: 'Street Adress',
                  textStyle: GoogleFonts.nunito(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xffB0B0B0)),
                    suffixIcon: const Icon(Icons.keyboard_arrow_down)),
                SizedBox(height: 68.h),
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
                  text: 'Sign up', 
                  fontSize: 15, 
                  fontWeight: FontWeight.w700, 
                  color: Colors.white,
                  backgroundColor: const Color(0xff77DD77), 
                  borderradius: BorderRadius.circular(100),
                  onPressed: () {
                  },),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Do you already have an account?',
                      style: GoogleFonts.nunito(
                            fontSize: 12.sp,
                            color: Colors.black
                      )),
                      TextButton(
                    onPressed:(){
                    Get.to(const LoginScreen());
                    }, 
                    child: Text('Log in',
                    style: GoogleFonts.nunito(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff77DD77)
                    ),))
                    ],
                  ),
                 
                  SizedBox(height: 15.h,)
                  ],
                ),
              ) ),
          
          ],
        ),
      ),
    );
  }
}
