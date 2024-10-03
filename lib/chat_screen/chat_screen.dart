import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wine_lovers/Controllers/chat_container/chat_container.dart';
import 'package:wine_lovers/home_screen/home_screen.dart';

class ChatScreen extends StatelessWidget {

  final ChatController chatController = Get.put(ChatController());

   ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          children: [
            SizedBox(height: 70.h),
            Row(
              children: [
                const Expanded(
                  child: SearchContainer(
                    text: 'Search for a chat'),
                ),
                  Image.asset('assets/icons/heart fav.png',height: 20.h,width: 21.w,),
                SizedBox(width: 10.w),
                  Image.asset('assets/icons/notification.png',height: 21.h,width: 21.w,)
              ],
            ),
            // SizedBox(height: 45.h),
          Expanded(
            child: Obx(() =>  ListView.builder(
              itemCount: chatController.wines.length,
                itemBuilder: (context, index) {
                  final wine = chatController.wines[index];
                  return Padding(
                          padding:  EdgeInsets.symmetric(vertical: 15.h),
                          child: ChatContainer(
                            text: wine['text']!,
                            title: wine['title']!,
                            image: wine['image']!,
                            ),
                            );
                },),
            ),
          )
          ],
        ),
      ),
    );
  }
}

class ChatContainer extends StatelessWidget {
  const ChatContainer({
  super.key,
  required this.image,
  required this.title,
  required this.text
  });
  final String image;
  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
    height: 87.h,
    width: 379.w,
    decoration: BoxDecoration(
     borderRadius: BorderRadius.circular(10),
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
        child: Row(
          children: [
            Image.asset(image),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(title,
                        style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400
                        )),
                      Text(text,
                        style: GoogleFonts.inter(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w300
                        )),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Lorem ipsum dolor sit amet consectet \nsit amet consectetur.',
                      style: GoogleFonts.inter(
                        fontSize: 12.33.sp,
                        fontWeight: FontWeight.w300
                    )),
                  Container(
                    height: 21.h,
                    width: 25.w,
                    decoration: BoxDecoration(
                      color: const Color(0xff77DD77),
                      borderRadius: BorderRadius.circular(4)
                    ),
                  child: Center(
                    child: Text(
                      '5',
                    style: GoogleFonts.inter(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w300
                    ),),
                  ),
                  ),
                  SizedBox(width: 10.w,)
                  ],
                )
                ],
              ),
            )
          ],
        ),
        );
  }
}