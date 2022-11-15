import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:http/http.dart';
import 'package:sugandh/views/discover/discover_screens.dart';
import 'package:sugandh/views/search_screen/search_page.dart';
import 'package:sugandh/widgets/app_bar_widget.dart';
import 'package:sugandh/widgets/constant.dart';
import 'package:sugandh/widgets/drower_box.dart';
import 'package:flutter/src/widgets/image.dart' as I;

import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Controllers/demand_product_controller.dart';
import '../../Controllers/trand_category_controller.dart';
import '../../models/search_model.dart';
import '../search_screen/controllers/search_screen_controller.dart';

class HomePage extends GetView<SearchModel> with WidgetsBindingObserver {
  SearchController searchcontroller = Get.put(SearchController());

  DemandProductController demandProductController =
      Get.put(DemandProductController());
  TrandCategoryController trandCategoryController =
      Get.put(TrandCategoryController());

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "lib/assets/asset/jeans.png",
      "lib/assets/asset/paint.png",
      "lib/assets/asset/googles.png",
      "lib/assets/asset/blue frock.png",
      "lib/assets/asset/gloubs.png",
      "lib/assets/asset/phone.png",
      "lib/assets/asset/shooes.png",
      "lib/assets/asset/watches.png",
      "lib/assets/asset/earphone.png",
      "lib/assets/asset/paint.png",
    ];

    List<String> baner1 = [
      "lib/assets/asset/slide-1.png",
      "lib/assets/asset/slide2.png",
      "lib/assets/asset/slide3.png",
    ];

    List<String> baner2 = [
      "lib/assets/asset/sliideee1.png",
      "lib/assets/asset/slideee2.png",
      "lib/assets/asset/slideee3.png",
    ];

    List<String> baner3 = [
      "lib/assets/asset/trading_girl.png",
      "lib/assets/asset/trading_legshoes.png",
      "lib/assets/asset/trading_shirts.png",
      "lib/assets/asset/trading_watches.png",
    ];

    List<String> baner4 = [
      "lib/assets/asset/iwatch.png",
      "lib/assets/asset/ipodeear.png",
      "lib/assets/asset/shirt.png",
      "lib/assets/asset/shoes.png",
    ];

    List<String> baner5 = [
      "lib/assets/asset/lakme.png",
      "lib/assets/asset/lakme3.png",
      "lib/assets/asset/face-cream-oil.png",
      "lib/assets/asset/lakme2.png",
    ];

    List<String> baner6 = [
      "lib/assets/asset/pouch-amul-original-.png",
      "lib/assets/asset/amul-original-ih.png",
      "lib/assets/asset/300-dark-hazelnut-chocolate.png",
      "lib/assets/asset/cheese-spread-yummy.png",
    ];

    List<String> baner7 = [
      "lib/assets/asset/7-8-years-blueshrug.png",
      "lib/assets/asset/blackscuit.png",
      "lib/assets/asset/bluefrock2.png",
      "lib/assets/asset/girlstyle.png",
    ];

    List<String> baner8 = [
      "lib/assets/asset/yes-semi-stitched-amira-red-.png",
      "lib/assets/asset/yes-unstitched.png",
      "lib/assets/asset/fabwomen-unstitched-.png",
      "lib/assets/asset/buke-yellow-combo-tashvir.png",
    ];

    List<String> baner9 = [
      "lib/assets/asset/cream-original-t.png",
      "lib/assets/asset/sandel.png",
      "lib/assets/asset/jorden33.png",
      "lib/assets/asset/shoesking.png",
    ];

    List<String> baner10 = [
      "lib/assets/asset/apple-iphone-12.png",
      "lib/assets/asset/g60-phone.png",
    ];

    List<String> banner2text1 = [
      'From ₹199',
      'From ₹299',
      'From ₹399',
    ];
    List<String> banner3text1 = ['Redfrock', 'Legshoes', 'Shirts', 'watches'];
    List<String> text = [
      'Women',
      'Glasses',
      'Exclusive',
      'Dresses',
      'Pants',
      'New',
      'Short',
      'Gloves',
      'Winter',
      '50% OFF',
    ];

    List<String> banner2text2 = [
      'Fashion Banner',
      'From 90 min delivery',
      'From 90 min delivery'
    ];
    List<String> banner3text2 = ['50% OFF', '30% OFF', '20% OFF', '35% OFF'];

    List<String> banner4text1 = [
      'Smart Watch',
      'Bluetooth',
      'Casual Shirt',
      'Running Shoes'
    ];
    List<String> banner4text2 = [
      'Min.70% OFF',
      'Min.60% OFF',
      'Min.50% OFF',
      'Min.70% OFF'
    ];
    List<String> banner4text3 = [
      'IP68 Bluetooth 4.0 ios 8.0+\n Android 4.4+live',
      'Lidht Weighted  Noice\n Cancellation Earphione\n Bluetooth',
      'Man Slim Fit Checkered\n Cut Away Coller Casual Shirt',
      'Buy Oora  Grey Running Shoes\n'
          'for Men Online at a Discounted\n'
          'price'
    ];
    List<String> banner5text1 = [
      'lakme Rose Face',
      'DPMD mekup kit combo',
      'WOW SKIN SCIENCE',
      'Ricerca Makeup Beauty'
    ];
    List<String> banner5text2 = [
      'Power Compact',
      'SET OF 27 COMPLETE\n'
          'MAKUP PRODUCTS',
      'Vitamin C Face Cream',
      'Black Waterproof Kajal'
    ];

    List<String> banner5text3 = [
      '₹152 10% off',
      '₹1,058 10% off',
      '₹509 15% off',
      '₹239 29% off'
    ];

    List<String> banner6text1 = [
      'Amul Ghee 500 ml Pouch',
      'Amul Pasteurised Salted\n'
          'Butter(100g)',
      'Amul DARK + HAZELNUT\n'
          'CHOCOLATE',
      'Amul Plain Cheese\n'
          'Spread (200g)'
    ];
    List<String> banner6text2 = ['₹305', '₹46', '₹372', '₹80'];

    List<String> banner7text1 = ['From', 'From', 'From', 'From'];

    List<String> banner7text2 = ['₹305', '₹46', '₹372', '₹80'];

    List<String> banner8text1 = [
      'Cotton Graphic Print',
      'Satish Embraidered',
      'Printed Mysore Art',
      'Women Float Print'
    ];

    List<String> banner8text2 = [
      'Floral Print',
      'Embelished Cown',
      'Silk Sarees(pink)',
      'Crepe Straight Kurta'
    ];

    List<String> banner8text3 = [
      '₹999  84% 0ff',
      '₹299  85% 0ff',
      '₹254  84% 0ff',
      '₹254  84% 0ff'
    ];

    List<String> banner9text1 = [
      'Women Off White \n'
          'Fluts Serial',
      'Women Blue Flates Sandel',
      'Shoes For Women',
      'Women Tan Flats Sandel'
    ];

    List<String> banner9text2 = [
      '₹999  84% 0ff',
      '₹299  85% 0ff',
      '₹254  84% 0ff',
      '₹254  84% 0ff'
    ];

    List<String> banner10text1 = [
      'iPhone 12 mini',
      'moto g60 at ₹15,999',
    ];

    List<String> banner10text2 = [
      'Powerfully Packed',
      'Poco X3 From ₹16,999',
    ];

    List<String> banner10text3 = [
      'From ₹62,999  84% 0ff',
      'Explore Details',
    ];

    int pageIndex = 0;
    GlobalKey<ScaffoldState> _key = GlobalKey();
    return SafeArea(
      child: Scaffold(
        key: _key,
        appBar: App_bar(
            start: I.Image.asset(
              'lib/assets/asset/menu.png',
              height: 12,
            ).onTap(() {
              _key.currentState!.openDrawer();
            }),
            // "Location".text.size(13.sp).semiBold.black.make(),

            middle: Text(
              'Home',
              style: TextStyle(
                fontSize: 19,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            end: IconButton(
                onPressed: () {
                  Get.to(() => SearchScreen());
                },
                icon: Icon(
                  Icons.search_rounded,
                  color: Colors.black,
                ))),
        drawer: OpenDrawer(),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: 100.w,
          decoration: BoxDecoration(color: Colors.white
              //gradient: gradient2,
              ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                2.h.heightBox,

                Container(
                  height: 16.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF707070)),
                    color: Color(0xFFFFFFFF),
                  ),
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 5,
                              childAspectRatio: 4 / 3,
                              crossAxisSpacing: 2,
                              mainAxisSpacing: 1),
                      itemCount: 10,
                      itemBuilder: (BuildContext ctx, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                0.4.h.heightBox,
                                I.Image.asset(
                                  images[index],
                                  height: 30,
                                ).p2(),

                                0.heightBox,
                                //AssetImage(images[index]),
                                Text(
                                  text[index],
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ).pSymmetric(v: 0.5.h, h: 4.3.w).onTap(() {
                          Get.to(() => DiscoverPage());
                        });
                      }),
                ),

                Container(
                  height: 22.h,
                  width: 100.w,
                  color: Colors.white,
                  child: ListView.builder(
                    //physics: NeverScrollableScrollPhysics(),

                    itemBuilder: (BuildContext, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                  height: 22.h,
                                  width: 100.w,
                                  child: I.Image.asset(
                                    baner1[index],
                                    fit: BoxFit.fill,
                                  )),
                              //AssetImage(images[index]),
                              //Text("This is title",style: TextStyle(fontSize: 10,),),
                            ],
                          ),
                        ],
                      );
                    },
                    itemCount: baner1.length,
                    shrinkWrap: true,
                    //padding: EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal,
                  ),
                ),

                Container(
                  height: 22.5.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF707070)),
                    color: Color(0xFF000000),
                  ),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              height: 20.h,
                              width: 30.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  I.Image.asset(
                                    baner2[index],
                                    fit: BoxFit.fitHeight,
                                  ),
                                  Text(
                                    banner2text1[index],
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ).px(3),
                                  Text(
                                    banner2text2[index],
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  ).px(3),
                                ],
                              )),
                        ],
                      ).pSymmetric(h: 1.w);
                    },
                    itemCount: baner1.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.all(7),
                    scrollDirection: Axis.horizontal,
                  ),
                ),

                Container(
                  height: 55,
                  width: 416,
                  decoration: BoxDecoration(
                    color: backgroundborder,
                    border: Border.all(color: Color(0xff707070)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Trending Offers',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        height: 7.h,
                        width: 7.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: Center(
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 12,
                              )),
                        ),
                      ),
                    ],
                  ).pSymmetric(v: 0.5.h, h: 3.3.w),
                ),

                Container(
                  height: 38.3.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF707070)),
                    color: Color(0xFFFFFFFF),
                  ),
                  child: trandCategoryController.obx(
                    (state) => GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        //childAspectRatio: 4/ 3,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 0,
                        mainAxisExtent: 150,
                      ),
                      itemCount: 4,
                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                            height: 18.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey, width: 1),

                              //borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                I.Image.asset(
                                  baner3[index],
                                  height: 15.h,
                                  width: 55.w,
                                ),
                                Text(
                                  banner3text1[index],
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ).px(3),
                                Text(
                                  banner3text2[index],
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ).px(3),
                              ],
                            ));
                      },
                    ),
                  ),
                ),

                Container(
                  height: 14.h,
                  width: 100.w,
                  color: Colors.white,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),

                    itemBuilder: (BuildContext, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              1.h.heightBox,

                              Container(
                                  height: 12.h,
                                  width: 100.w,
                                  child: I.Image.asset(
                                    'lib/assets/asset/sale1.png',
                                    fit: BoxFit.fill,
                                  )),
                              //AssetImage(images[index]),
                              //Text("This is title",style: TextStyle(fontSize: 10,),),
                            ],
                          ),
                        ],
                      );
                    },
                    itemCount: baner1.length,
                    shrinkWrap: true,
                    //padding: EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal,
                  ),
                ),

                Container(
                  height: 55,
                  width: 416,
                  decoration: BoxDecoration(
                    color: backgroundborder,
                    border: Border.all(color: Color(0xff707070)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'In Demand',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        height: 7.h,
                        width: 7.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: Center(
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 12,
                              )),
                        ),
                      ),
                    ],
                  ).pSymmetric(v: 0.5.h, h: 3.3.w),
                ),

                Container(
                  height: 60.3.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    //border: Border.all(color: Color(0xFF707070)),
                    color: Color(0xFFFFFFFF),
                  ),
                  child: demandProductController.obx(
                    (state) => GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        //childAspectRatio: 4/ 3,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 2,
                        mainAxisExtent: 240,
                      ),
                      itemCount: 4,
                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                            height: 29.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              // border: Border.all(color: Colors.grey,width: 1),

                              //borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 19.h,
                                    width: 43.w,
                                    child: I.Image.asset(
                                      baner4[index],
                                      fit: BoxFit.fill,
                                    )),
                                Container(
                                  height: 10.h,
                                  color: backgroundborder,
                                  width: 43.w,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(banner4text1[index],
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white))
                                          .px(3),
                                      Text(
                                        banner4text2[index],
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white),
                                      ).px(3),
                                      Text(
                                        banner4text3[index],
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ).px(3),
                                    ],
                                  ),
                                ),
                              ],
                            )).pSymmetric(v: 0.2.h);
                      },
                    ),
                  ),
                ),
                1.h.heightBox,

                Container(
                  height: 55,
                  width: 416,
                  decoration: BoxDecoration(
                    color: backgroundborder,
                    border: Border.all(color: Color(0xff707070)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Beauty product',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        height: 3.h,
                        width: 15.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          //shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: Center(
                            child: Text(
                          'View',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                      ),
                    ],
                  ).pSymmetric(v: 0.5.h, h: 3.3.w),
                ),

                Container(
                  height: 60.3.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    //border: Border.all(color: Color(0xFF707070)),
                    color: Color(0xFFFFFFFF),
                  ),
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        //childAspectRatio: 4/ 3,

                        //crossAxisCount: 2,
                        //childAspectRatio: 4/ 3,
                        // crossAxisSpacing: 0,
                        // mainAxisSpacing: 2,
                        // mainAxisExtent: 240,

                        crossAxisSpacing: 1,
                        mainAxisSpacing: 1,
                        mainAxisExtent: 30.h + 1,
                      ),
                      itemCount: 4,
                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                            height: 30.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              // border: Border.all(color: Colors.grey,width: 1),

                              //borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 19.h,
                                    width: 43.w,
                                    child: I.Image.asset(
                                      baner5[index],
                                      fit: BoxFit.fill,
                                    )),
                                Container(
                                  height: 10.h,
                                  color: Colors.white,
                                  //backgroundborder,
                                  width: 43.w,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(banner5text1[index],
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black))
                                          .px(3),
                                      Text(
                                        banner5text2[index],
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.black),
                                      ).px(3),
                                      Text(
                                        banner5text3[index],
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.black),
                                      ).px(3),
                                    ],
                                  ),
                                ),
                              ],
                            ));
                      }),
                ),

                1.h.heightBox,

                Container(
                  height: 14.h,
                  width: 100.w,
                  color: Colors.white,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),

                    itemBuilder: (BuildContext, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              1.h.heightBox,

                              Container(
                                  height: 12.h,
                                  width: 100.w,
                                  child: I.Image.asset(
                                    'lib/assets/asset/sale4.png',
                                    fit: BoxFit.fill,
                                  )),
                              //AssetImage(images[index]),
                              //Text("This is title",style: TextStyle(fontSize: 10,),),
                            ],
                          ),
                        ],
                      );
                    },
                    itemCount: baner1.length,
                    shrinkWrap: true,
                    //padding: EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal,
                  ),
                ),

                Container(
                  height: 55,
                  width: 416,
                  decoration: BoxDecoration(
                    color: backgroundborder,
                    border: Border.all(color: Color(0xff707070)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tasted Product',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        height: 3.h,
                        width: 15.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          //shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: Center(
                            child: Text(
                          'View',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                      ),
                    ],
                  ).pSymmetric(v: 0.5.h, h: 3.3.w),
                ),

                Container(
                  height: 60.3.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    //border: Border.all(color: Color(0xFF707070)),
                    color: Color(0xFFFFFFFF),
                  ),
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        //childAspectRatio: 4/ 3,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 2,
                        mainAxisExtent: 240,
                      ),
                      itemCount: 4,
                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                            height: 29.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              // border: Border.all(color: Colors.grey,width: 1),

                              //borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 19.h,
                                    width: 43.w,
                                    child: I.Image.asset(
                                      baner6[index],
                                      fit: BoxFit.fill,
                                    )),
                                Container(
                                  height: 10.h,
                                  color: Colors.white,
                                  //backgroundborder,
                                  width: 43.w,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(banner6text1[index],
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black))
                                          .px(3),
                                      Text(
                                        banner6text2[index],
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                      ).px(3),
                                    ],
                                  ),
                                ),
                              ],
                            )).pSymmetric(v: 0.2.h);
                      }),
                ),

                Container(
                  height: 14.h,
                  width: 100.w,
                  color: Colors.white,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),

                    itemBuilder: (BuildContext, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              1.h.heightBox,

                              Container(
                                  height: 12.h,
                                  width: 100.w,
                                  child: I.Image.asset(
                                    'lib/assets/asset/saleBrown Clothing.png',
                                    fit: BoxFit.fill,
                                  )),
                              //AssetImage(images[index]),
                              //Text("This is title",style: TextStyle(fontSize: 10,),),
                            ],
                          ),
                        ],
                      );
                    },
                    itemCount: baner1.length,
                    shrinkWrap: true,
                    //padding: EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal,
                  ),
                ),

                Container(
                  height: 14.h,
                  width: 100.w,
                  color: Colors.white,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),

                    itemBuilder: (BuildContext, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              1.h.heightBox,
                              //lib/assets/asset/saleBrown Clothing.png

                              Container(
                                  height: 12.h,
                                  width: 100.w,
                                  child: I.Image.asset(
                                    'lib/assets/asset/sale3.png',
                                    fit: BoxFit.fill,
                                  )),
                              //AssetImage(images[index]),
                              //Text("This is title",style: TextStyle(fontSize: 10,),),
                            ],
                          ),
                        ],
                      );
                    },
                    itemCount: baner1.length,
                    shrinkWrap: true,
                    //padding: EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal,
                  ),
                ),

                Container(
                  height: 55,
                  width: 416,
                  decoration: BoxDecoration(
                    color: backgroundborder,
                    border: Border.all(color: Color(0xff707070)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            I.Image.asset(
                              'lib/assets/asset/Icon ionic-ios-flash.png',
                              height: 30,
                            ),
                            Text(
                              ' Flash Sales',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 3.h,
                        width: 15.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          //shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: Center(
                            child: Text(
                          'View',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                      ),
                    ],
                  ).pSymmetric(v: 0.5.h, h: 3.3.w),
                ),

                Container(
                  height: 22.h,
                  width: 100.w,
                  color: backgroundborder,
                  child: ListView.builder(
                    //physics: NeverScrollableScrollPhysics(),

                    itemBuilder: (BuildContext, index) {
                      return Container(
                          width: 30.w,
                          color: backgroundborder,
                          child: Column(
                            children: [
                              Container(
                                  height: 17.h,
                                  width: 25.w,
                                  child: I.Image.asset(
                                    baner7[index],
                                    fit: BoxFit.fitHeight,
                                  )),
                              Container(
                                height: 5.h,
                                width: 25.w,
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      banner7text1[index],
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold),
                                    ).px(3),
                                    Text(
                                      banner7text2[index],
                                      style: TextStyle(
                                        fontSize: 13,
                                      ),
                                    ).px(3),
                                  ],
                                ),
                              ),
                            ],
                          ));
                    },
                    itemCount: baner7.length,
                    shrinkWrap: true,
                    //padding: EdgeInsets.all(2),
                    scrollDirection: Axis.horizontal,
                  ),
                ),

                Container(
                  height: 55,
                  width: 416,
                  decoration: BoxDecoration(
                    color: backgroundborder,
                    border: Border.all(color: Color(0xff707070)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Clothes For Women',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        height: 3.h,
                        width: 15.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          //shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: Center(
                            child: Text(
                          'View',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                      ),
                    ],
                  ).pSymmetric(v: 0.5.h, h: 3.3.w),
                ),

                Container(
                  height: 58.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    //border: Border.all(color: Color(0xFF707070)),
                    //color: Color(0xFFFFFFFF),
                    color: Colors.grey,
                  ),
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        //childAspectRatio: 4/ 3,
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 1,
                        mainAxisExtent: 29.h + 1,
                      ),
                      itemCount: 4,
                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                            height: 29.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              // border: Border.all(color: Colors.grey,width: 1),

                              //borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 19.h,
                                    width: 43.w,
                                    child: I.Image.asset(
                                      baner8[index],
                                      fit: BoxFit.fitHeight,
                                    )),
                                Container(
                                  height: 10.h,
                                  color: Colors.white,
                                  //backgroundborder,
                                  width: 43.w,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(banner8text1[index],
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black))
                                          .px(3),
                                      Text(
                                        banner8text2[index],
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                      ).px(3),
                                      Text(
                                        banner8text3[index],
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.redAccent),
                                      ).px(3),
                                    ],
                                  ),
                                ),
                              ],
                            ));
                      }),
                ),

                Container(
                  height: 14.h,
                  width: 100.w,
                  color: Colors.white,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),

                    itemBuilder: (BuildContext, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              1.h.heightBox,

                              Container(
                                  height: 12.h,
                                  width: 100.w,
                                  child: I.Image.asset(
                                    'lib/assets/asset/sale3 (5).png',
                                    fit: BoxFit.fill,
                                  )),
                              //AssetImage(images[index]),
                              //Text("This is title",style: TextStyle(fontSize: 10,),),
                            ],
                          ),
                        ],
                      );
                    },
                    itemCount: baner1.length,
                    shrinkWrap: true,
                    //padding: EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal,
                  ),
                ),

                Container(
                  height: 14.h,
                  width: 100.w,
                  color: Colors.white,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),

                    itemBuilder: (BuildContext, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              1.h.heightBox,
                              //lib/assets/asset/saleBrown Clothing.png

                              Container(
                                  height: 12.h,
                                  width: 100.w,
                                  child: I.Image.asset(
                                    'lib/assets/asset/sale3 (4).png',
                                    fit: BoxFit.fill,
                                  )),
                              //AssetImage(images[index]),
                              //Text("This is title",style: TextStyle(fontSize: 10,),),
                            ],
                          ),
                        ],
                      );
                    },
                    itemCount: baner1.length,
                    shrinkWrap: true,
                    //padding: EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal,
                  ),
                ),

                Container(
                  height: 55,
                  width: 416,
                  decoration: BoxDecoration(
                    color: backgroundborder,
                    border: Border.all(color: Color(0xff707070)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Women Footwear',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        height: 3.h,
                        width: 15.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          //shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: Center(
                            child: Text(
                          'View',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                      ),
                    ],
                  ).pSymmetric(v: 0.5.h, h: 3.3.w),
                ),

                Container(
                  height: 58.3.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    //border: Border.all(color: Color(0xFF707070)),
                    //color: Color(0xFFFFFFFF),
                    color: Colors.grey,
                  ),
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        //childAspectRatio: 4/ 3,
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 1,
                        mainAxisExtent: 29.h + 1,
                      ),
                      itemCount: 4,
                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                            height: 29.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              // border: Border.all(color: Colors.grey,width: 1),

                              //borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 19.h,
                                    width: 43.w,
                                    child: I.Image.asset(
                                      baner9[index],
                                      fit: BoxFit.fitHeight,
                                    )),
                                Container(
                                  height: 10.h,
                                  color: Colors.white,
                                  //backgroundborder,
                                  width: 43.w,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(banner9text1[index],
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black))
                                          .px(3),
                                      Text(
                                        banner9text2[index],
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.black),
                                      ).px(3),
                                    ],
                                  ),
                                ),
                              ],
                            ));
                      }),
                ),

                // Container(
                //   height: 60.3.h,
                //   width: 100.w,
                //
                //   decoration: BoxDecoration(
                //     //border: Border.all(color: Color(0xFF707070)),
                //     //color: Color(0xFFFFFFFF),
                //     color: Colors.grey,
                //   ),
                //
                //   child: GridView.builder(
                //       physics: NeverScrollableScrollPhysics(),
                //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //         crossAxisCount: 2,
                //         //childAspectRatio: 4/ 3,
                //         crossAxisSpacing: 1,
                //         mainAxisSpacing: 1,
                //         mainAxisExtent: 29.h+1,
                //       ),
                //       itemCount: 4,
                //       itemBuilder: (BuildContext ctx,index) {
                //
                //         return Container(
                //             height: 29.h,
                //             width: 50.w,
                //             decoration: BoxDecoration(
                //               color: Colors.white,
                //               // border: Border.all(color: Colors.grey,width: 1),
                //
                //               //borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                //
                //             ),
                //
                //             child: Column(
                //               crossAxisAlignment: CrossAxisAlignment.center,
                //               mainAxisAlignment: MainAxisAlignment.center,
                //               children: [
                //                 Container(
                //                     height: 19.h,
                //                     width: 43.w,
                //
                //                     child: Image.asset(baner9[index],fit: BoxFit.fitHeight,)),
                //                 Container(
                //                   height: 10.h,
                //                   color: Colors.white,
                //                   //backgroundborder,
                //                   width: 43.w,
                //                   child: Column(
                //                     crossAxisAlignment: CrossAxisAlignment.start,
                //                     mainAxisAlignment: MainAxisAlignment.center,
                //                     children: [
                //                       Text(banner9text1[index],style: TextStyle(fontSize: 12,
                //                           fontWeight: FontWeight.bold,color: Colors.black)).px(3),
                //                       Text(banner9text2[index],style: TextStyle(fontSize: 14,color: Colors.black),).px(3),
                //                     ],
                //                   ),
                //                 ),
                //               ],
                //             ));
                //
                //       }
                //   ),
                // ),

                Container(
                  height: 55,
                  width: 416,
                  decoration: BoxDecoration(
                    color: backgroundborder,
                    border: Border.all(color: Color(0xff707070)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Phone',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        height: 3.h,
                        width: 15.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          //shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: Center(
                            child: Text(
                          'View',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                      ),
                    ],
                  ).pSymmetric(v: 0.5.h, h: 3.3.w),
                ),

                Container(
                  height: 30.3.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    //border: Border.all(color: Color(0xFF707070)),
                    //color: Color(0xFFFFFFFF),
                    color: Colors.white,
                  ),
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        //childAspectRatio: 4/ 3,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 2,
                        mainAxisExtent: 240,
                      ),
                      itemCount: 2,
                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                            height: 29.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              // border: Border.all(color: Colors.grey,width: 1),

                              //borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 19.h,
                                    width: 43.w,
                                    color: Color(0xFFD9F4E4),
                                    child: I.Image.asset(
                                      baner10[index],
                                      fit: BoxFit.fitHeight,
                                    )),
                                Container(
                                  height: 10.h,
                                  color: Color(0xFFD9F4E4),
                                  //color: Colors.white,
                                  width: 43.w,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(banner10text1[index],
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black))
                                          .px(3),
                                      Text(
                                        banner10text2[index],
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.grey),
                                      ).px(3),
                                      Text(
                                        banner10text3[index],
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.green),
                                      ).px(3),
                                    ],
                                  ),
                                ),
                              ],
                            )).pSymmetric(v: 0.2.h);
                      }),
                ),

                Container(
                  height: 14.h,
                  width: 100.w,
                  color: Colors.white,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),

                    itemBuilder: (BuildContext, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              1.h.heightBox,
                              //lib/assets/asset/saleBrown Clothing.png

                              Container(
                                  height: 12.h,
                                  width: 100.w,
                                  child: I.Image.asset(
                                    'lib/assets/asset/sale3 (2).png',
                                    fit: BoxFit.fill,
                                  )),
                              //AssetImage(images[index]),
                              //Text("This is title",style: TextStyle(fontSize: 10,),),
                            ],
                          ),
                        ],
                      );
                    },
                    itemCount: baner1.length,
                    shrinkWrap: true,
                    //padding: EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal,
                  ),
                ),

                2.h.heightBox,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
