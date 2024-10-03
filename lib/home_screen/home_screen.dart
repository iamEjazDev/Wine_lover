import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wine_lovers/Controllers/listcontroller/listcontroller.dart';
import 'package:wine_lovers/Controllers/Button_controller/button_controller.dart';
import 'package:wine_lovers/Controllers/CarouselController/carousel_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CarouselController controller = Get.put(CarouselController());
  final ListController listController = Get.put(ListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
          body: Column(
            children: [
      SizedBox(height: 89.h),
          const SearchContainer(
          text: 'Find your favorite wine or restaurant',
             ),
              SizedBox(height: 19.h),
              CarouselSlider(
                options: CarouselOptions(
                  height: 177.h,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    controller.updateIndex(index);
                  },
                ),
                items: [1, 2, 3].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return const WineCaresoulCard();
                    },
                  );
                }).toList(),
              ),
              SizedBox(height: 20.h),
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [1, 2, 3].map((url) {
                    int index = [1, 2, 3].indexOf(url);
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      padding: EdgeInsets.zero,
                      margin: const EdgeInsets.symmetric(horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: controller.currentIndex.value == index
                            ? const Color(0xff379A37)
                            : const Color(0xff74DA74),
                      ),
                    );
                  }).toList(),
                ),
              ),
            SizedBox(height: 20.h),
          SizedBox(
            height: 50, 
            child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listController.images.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      listController.changeColor(index);
                    },
                    child: Obx(() =>  Container(
                        width: 161, 
                        height: 48, 
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: listController.selectedIndex.value == index
                              ? const Color(0xff77DD77) 
                              : const Color(0xffF5FDF5), 
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 5.w),
                            CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                listController.images[index], 
                              ),
                            ),
                             SizedBox(width: 15.w),
                            Text(
                              listController.titles[index], 
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            
          ),
          Expanded(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 18.w),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                     SizedBox(height: 37.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Popular wines :',
                      style: GoogleFonts.nunito(
                        fontSize: 23.sp,
                        fontWeight: FontWeight.w700
                     ),
                    ),
                   ),
                SizedBox(height: 71.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
                WineContainer(
                  wineheight: 186.h,
                  winewidth: 116.w,
                  image: 'assets/images/king wilds.png',
                  color: const Color(0xff77DD77),
                  winetittle: 'Minkov Brothers',
                  tittletextStyle: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  ),
                  wineType: 'Carbanet sauvignon',
                  typetextstyle: GoogleFonts.inter(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  ),
                  winePrice: '€69,99',
                  pricetextstyle: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  ),
                  cartcontainercolor: Colors.white,
                  cartcolor: const Color(0xff77DD77),
                ),
                 WineContainer(
                  wineheight: 190.h,
                  winewidth: 45.w,
                  image: 'assets/images/Diablo (2).png',
                  // color:  Color(0xff77DD77).withOpacity(.80),
                  color: Colors.white30,
                  winetittle: 'Peter',
                  tittletextStyle: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  ),
                  wineType: 'Primitive',
                  typetextstyle: GoogleFonts.inter(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  ),
                  winePrice: '€25,99',
                  pricetextstyle: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  ),
                  cartcontainercolor: const Color(0xff77DD77),
                  cartcolor: Colors.white,
                ),
                ],
                ),
                SizedBox(height: 46.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Popular restaurants :',
                  style: GoogleFonts.nunito(
                    fontSize: 23.sp,
                    fontWeight: FontWeight.w700,
                  ))),
      SizedBox(height: 19.h),
       const RestaurantCard(
                name: 'Fou D’o',
                description: 'Known for its extensive wine list \nwith a nice piece of red meat',
                rating: '4.8',
                reviews: '152 reviews',
              ),
              SizedBox(height: 11.h),
              const RestaurantCard(
                name: 'Guest of Halifax',
                description: 'Known for its extensive wine list \nwith a nice piece of red meat',
                rating: '4.8',
                reviews: '152 reviews',
              ),
              SizedBox(height: 10.h)
                 ],
           ),
          ),
        ),
      )
    ],
   ),
  );
 }
}

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.text
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Container(
        height: 53.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: const Color(0xff00000012).withOpacity(.1)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 15.w),
            Image.asset('assets/icons/search icon.png'),
            SizedBox(width: 20.w),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: text,
                  hintStyle: GoogleFonts.nunito(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff0000008F).withOpacity(.56),
                  ),
                  isCollapsed: true,
                  border: InputBorder.none, 
                ),
              ),
            ),
            const Spacer(),
            Container(
              height: 53.h,
              width: 53.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xff77DD77),
              ),
              child: Image.asset('assets/icons/mage_filter.png'),
            ),
          ],
        ),
      ),
    );
  }
}

class WineContainer extends StatelessWidget {
  const WineContainer({
    super.key,
    required this.image,
    required this.color,
    required this.winetittle,
    required this.wineType,
    required this.winePrice,
    required this.tittletextStyle,
    required this.typetextstyle,
    required this.pricetextstyle,
    required this.wineheight,
    required this.winewidth,
    required this.cartcontainercolor,
    required this.cartcolor
  });
  final String image;
  final Color color;
  final String winetittle;
  final String wineType;
  final String winePrice;
  final TextStyle tittletextStyle;
  final TextStyle typetextstyle;
  final TextStyle pricetextstyle;
  final double wineheight;
  final double winewidth;
  final Color cartcontainercolor;
  final Color cartcolor;
  @override
  Widget build(BuildContext context) {
    return Stack(
        clipBehavior: Clip.none, 
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 233.h,
            width: 183.w,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(1000.sp),
                topRight: Radius.circular(1000.sp)
              ),
              border: Border.all(
                color: const Color(0xff77DD77), 
                width: 1.2, 
              ),
            ),
            child:  Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ 
                  SizedBox(height: 10.h),
                  Text(
                    winetittle,
                    style: tittletextStyle
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    wineType,
                    style: typetextstyle
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    winePrice,
                    style: pricetextstyle
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -60, 
                  child: Image.asset(
                    image,
                  height: wineheight,
                  width: winewidth,
                  ),
                ),
                const Positioned(
                  top: 25,
                  right: 17,
                  child: Icon(
                  Icons.favorite_border,
                  color: Colors.black54,
               ),
            ),
            Positioned(
              bottom: -15,
              child: Container(
                height: 33.h,
                width: 72.w,
                decoration: BoxDecoration(
                  color: cartcontainercolor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.asset('assets/icons/fluent cart.png',
                color: cartcolor),
              ),
            )
         ],
      );
   }
}

class RestaurantCard extends StatelessWidget {
  final String name;
  final String description;
  final String rating;
  final String reviews;

  const RestaurantCard({
    super.key,
    required this.name,
    required this.description,
    required this.rating,
    required this.reviews,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: Colors.white,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.inter(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        description,
                        style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                            rating,
                          style: GoogleFonts.mulish(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      reviews,
                      style:  GoogleFonts.mulish(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                     Image.asset('assets/icons/stars.png')
                  ],
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Align(
              alignment: Alignment.centerLeft,
              child:CommonUseButton(
              text: 'To the restaurant page', 
              height: 41.h, 
              width: 228.w, 
              fontSize: 15.sp, 
              fontWeight: FontWeight.w500, 
              color: Colors.white,
              backgroundColor: const Color(0xff77DD77), 
              borderradius: BorderRadius.circular(6.47),
              onPressed: () {
                
              },)
            ),
          ],
        ),
      ),
    );
  }
}