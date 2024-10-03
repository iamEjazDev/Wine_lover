import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wine_lovers/Controllers/Button_controller/button_controller.dart';
import 'package:wine_lovers/Controllers/WineController/winecontroller.dart';
import 'package:wine_lovers/home_screen/home_screen.dart';

class ProductPage extends StatelessWidget {
  
  final WineController wineController = Get.put(WineController());

   ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 74.h,),
            Row(
              children: [
                const Expanded(
                  child: SearchContainer(
                  text: 'Search for a wine',
                  ),
                ),
                SizedBox(width: 15.w),
                Image.asset('assets/icons/heart fav.png',
                height: 24.h,width: 24.w,),
                SizedBox(width: 10.w),
                Image.asset('assets/icons/notification.png',
                height: 24.h,width: 24.w,),
                SizedBox(width: 25.w)
              ],
            ),
          SizedBox(height: 34.h),
        CommonUseButton(
            height: 58.29.h, 
            width: 294.w, 
            text: 'Setting up my restaurant',
            fontSize: 16.sp, 
            fontWeight: FontWeight.w700, 
            color: Colors.white,
            backgroundColor: const Color(0xff77DD77), 
            borderradius: BorderRadius.circular(84.48),
            onPressed: () {
              
            },),
            SizedBox(height: 33.h),
        CommonUseButton(
            height: 58.29.h, 
            width: 294.w, 
            text: 'Put a new bottle up for sale',
            fontSize: 16.sp, 
            fontWeight: FontWeight.w700, 
            color: Colors.white,
            backgroundColor: const Color(0xff77DD77), 
            borderradius: BorderRadius.circular(84.48),
            onPressed: () {
      
            },),
        SizedBox(height: 49.h),
        Expanded(
          child:Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('My wines :',
                    style: GoogleFonts.nunito(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w700
                    ))),
                Expanded(
                  child: Obx(() {
                  return ListView.builder(
                    itemCount: wineController.wines.length,
                    itemBuilder: (context, index) {
                      final wine = wineController.wines[index];
                      return Padding(
                        padding:  EdgeInsets.symmetric(vertical: 15.h),
                        child: MyWinesContainer(
                          name: wine['name']!,
                          condition: wine['condition']!,
                          sweetness: wine['sweetness']!,
                          viscosity: wine['viscosity']!,
                          ),
                          );
                          },
                        );
                      }
                      )
                      )
                      ],
                    ),
                  )
                  ),
                ],
              ),
            );
          }
        }
class MyWinesContainer extends StatelessWidget {
  final String name;
  final String condition;
  final String sweetness;
  final String viscosity;

  const MyWinesContainer({
    super.key,
    required this.name,
    required this.condition,
    required this.sweetness,
    required this.viscosity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 171.h,
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(24),
       color: Colors.white,
       boxShadow:  [ 
         BoxShadow(
           blurRadius: 1,
           spreadRadius: 0,
           offset: const Offset(0, 5),
           color: Colors.black.withOpacity(0.1)
         )
       ]
     ),
    child : Row(
      children: [
     SizedBox(width: 29.w),
       Image.asset('assets/images/Diablo (2).png',height: 119.h,),
       Expanded(
         child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 36.w,vertical: 28.h),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
               Text(name,
                 style: GoogleFonts.inter(
                   fontSize: 15.sp,
                   fontWeight: FontWeight.w700
                 )),
              //  SizedBox(width: 73.w),
              const Spacer(),
               Image.asset('assets/icons/Trash 2.png',height: 20.h,width: 19.w,),
               SizedBox(width: 16.w),
               Text('€69,99',
               style: GoogleFonts.inter(
                 fontSize: 16.sp,
                 fontWeight: FontWeight.w700
               ))
               ],
               ),
            Text(condition,
            style: GoogleFonts.inter(
             fontSize: 9.sp,
             fontWeight: FontWeight.w500
            )),
       Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween, 
           children: [
             Column(
               children: [
                 Text('Year',
                 style: GoogleFonts.inter(
                   fontSize: 12.sp,
                   fontWeight: FontWeight.w400,
                   color: Color(0xff00000080).withOpacity(0.50)
                 )),
                 Text('1982',
                 style: GoogleFonts.inter(
                   fontSize: 18.sp,
                   fontWeight: FontWeight.w500,
                   color: const Color(0xff379A37)
                 ))
               ],
             ),
             Column(
               children: [
                 Text('Alcohol',
                 style: GoogleFonts.inter(
                   fontSize: 12.sp,
                   fontWeight: FontWeight.w400,
                   color: Color(0xff00000080).withOpacity(.50)
                 )),
                 Text('13%',
                 style: GoogleFonts.inter(
                   fontSize: 18.sp,
                   fontWeight: FontWeight.w500,
                   color: const Color(0xff379A37)
                 ))
               ],
             ),
             Column(
               children: [
                 Text('Sweetness',
                 style: GoogleFonts.inter(
                   fontSize: 12.sp,
                   fontWeight: FontWeight.w400,
                   color: Color(0xff00000080).withOpacity(.50)
                 )),
                 Text(sweetness,
                 style: GoogleFonts.inter(
                   fontSize: 18.sp,
                   fontWeight: FontWeight.w500,
                   color: const Color(0xff379A37)
                 ))
               ],
             ),
             Column(
               children: [
                 Text('Viscosity',
                 style: GoogleFonts.inter(
                   fontSize: 12.sp,
                   fontWeight: FontWeight.w400,
                   color: Color(0xff00000080).withOpacity(.50)
                 )),
                 Text(viscosity,
                 style: GoogleFonts.inter(
                   fontSize: 18.sp,
                   fontWeight: FontWeight.w500,
                   color: const Color(0xff379A37)
                 ))
               ]
             )
           ],
         ),
       Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             CircleAvatar(
               radius: 4.h,
               backgroundColor: const Color(0xff379A37),
             ),
             Text('12 Sold',
             style: GoogleFonts.inter(
               fontSize: 9.sp,
               fontWeight: FontWeight.w500
             )),
            CircleAvatar(
               radius: 4.h,
               backgroundColor: const Color(0xffE4A70A)
             ),
             Text('13 Available',
             style: GoogleFonts.inter(
               fontSize: 9.sp,
               fontWeight: FontWeight.w500
             )),
           SizedBox(width: 100.w,)
           ]
         )
           ],
           ),
         ),
       ),
     
     ]
    ) 
    );
  }
}