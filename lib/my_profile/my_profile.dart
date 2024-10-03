import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart'; // Import GetX
import 'package:wine_lovers/Controllers/profile_switch/profile_switch.dart';

class MyProfile extends StatelessWidget {
  final ProfileSwitch switchController = Get.put(ProfileSwitch());

   MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          children: [
            SizedBox(height: 57.h),
            Center(
              child: Text(
                'My profile',
                style: GoogleFonts.encodeSans(
                fontSize: 18.sp, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 46.h),
            Container(
              height: 102.h,
              width: 102.w,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.48)),
              child: Image.asset('assets/images/user image.png'),
            ),
            SizedBox(height: 23.h),
            Text('Peter Janssens',
                style: GoogleFonts.inter(
                fontSize: 20.sp, fontWeight: FontWeight.w600)),
            SizedBox(height: 38.h),
            const ProfileContainer(
              image: 'assets/icons/User (2).png',
              text: 'Edit my profile',
            ),
            Padding(
              padding: EdgeInsets.only(left: 60.w),
              child: const Divider(
              color: Color(0xffF0F0F8),
              ),
            ),
            const ProfileContainer(
              image: 'assets/icons/play.png', 
              text: 'My subscription'),
                Padding(
              padding: EdgeInsets.only(left: 60.w),
              child: const Divider(
                color: Color(0xffF0F0F8),
              ),
            ),
            const SwitchContainer(
              image: 'assets/icons/user notification.png',
              text: 'Notifications',
            ),
              Padding(
              padding: EdgeInsets.only(left: 60.w),
              child: const Divider(
              color: Color(0xffF0F0F8),
              ),
            ),
            const ProfileContainer(
              image: 'assets/icons/icons_order.png', 
              text: 'My orders and sales'),
              Padding(
              padding: EdgeInsets.only(left: 60.w),
              child: const Divider(
                color: Color(0xffF0F0F8),
              ),
            ),
            const ProfileContainer(
              image: 'assets/icons/heart-fill.png', 
              text: 'Wishlist'),
              Padding(
              padding: EdgeInsets.only(left: 60.w),
              child: const Divider(
              color: Color(0xffF0F0F8),
              ),
            ),
            const ProfileContainer(
              image: 'assets/icons/Log out.png', 
              text: 'Log out'),
              Padding(
              padding: EdgeInsets.only(left: 60.w),
              child: const Divider(
              color: Color(0xffF0F0F8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 20.h,
          backgroundColor: const Color(0xffEBFAEB),
          child: Image.asset(image, height: 22.h, width: 22.w),
        ),
        SizedBox(width: 18.w),
        Text(text,
            style: GoogleFonts.encodeSans(
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
                letterSpacing: 1)),
        const Spacer(),
        Icon(Icons.arrow_forward_ios,
        color: const Color(0xffBBC3CE), size: 24.h),
      ],
    );
  }
}

class SwitchContainer extends StatelessWidget {
  const SwitchContainer({
    super.key,
    required this.image,
    required this.text,
  });

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    final ProfileSwitch switchController = Get.find();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 20.h,
          backgroundColor: const Color(0xffEBFAEB),
          child: Image.asset(image, height: 28.h, width: 28.w),
        ),
        SizedBox(width: 18.w),
        Text(text,
            style: GoogleFonts.encodeSans(
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
                letterSpacing: 1)),
        const Spacer(),
        Obx(() => Transform.scale(
          scale: 0.7,
          child: Switch(
                value: switchController.isSwitched.value,
                onChanged: (value) {
                  switchController.toogleSwitch(value);
                },
                activeColor: Colors.green,
                inactiveThumbColor: Colors.green,
                inactiveTrackColor: Colors.white,
              ),
        )),
      ],
    );
  }
}
