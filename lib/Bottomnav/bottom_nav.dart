import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:wine_lovers/Controllers/BottomNavController/BottomNavController.dart';
import 'package:wine_lovers/chat_screen/chat_screen.dart';
import 'package:wine_lovers/home_screen/home_screen.dart';
import 'package:wine_lovers/my_profile/my_profile.dart';
import 'package:wine_lovers/product_page/product_page.dart';
class Bottomnav extends StatelessWidget {
  
  final BottomNavController bottomNavController = Get.put(BottomNavController());
final List<Widget> _screens = [
     HomeScreen(),
     ProductPage(),
     ChatScreen(),
     MyProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => _screens[bottomNavController.currentIndex.value]),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xff77DD77),
            unselectedItemColor: Colors.grey, 
            backgroundColor: Colors.white, 
            currentIndex: bottomNavController.currentIndex.value,
            onTap: (index) {
              bottomNavController.changedIndex(index);
            },
            showSelectedLabels: false, 
            showUnselectedLabels: false, 
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/bottom home.png',
                  width: 24.w, 
                  height: 24.h,
                ),
                activeIcon: Image.asset(
                  'assets/icons/bottom fill home.png',
                  width: 24.w,
                  height: 24.h,
                ),
                label: '', 
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/bottom widget.png',
                  width: 26.w,
                  height: 26.h,
                ),
                activeIcon: Image.asset(
                  'assets/icons/bottom fill widget.png',
                  width: 26.w,
                  height: 26.h,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/bottom chat.png',
                  width: 28.w,
                  height: 28.h,
                ),
                activeIcon: Image.asset(
                  'assets/icons/bottom chat fill.png',
                  width: 22.w,
                  height: 22.h,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/User (2).png',
                  width: 20.w,
                  height: 20.h,
                ),
                activeIcon: Image.asset(
                  'assets/icons/User (1).png',
                  width: 20.w,
                  height: 20.h,
                ),
                label: '',
              ),
            ],
          )),
    );
  }
}
