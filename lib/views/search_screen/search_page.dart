import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:sugandh/views/products/controllers/products_controller.dart';
import 'package:sugandh/views/products/product_screen.dart';
// import 'package:sugandh/widgets/models/search_model.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';
import 'package:flutter/src/widgets/image.dart' as image;

import '../../models/search_model.dart';
import 'controllers/search_screen_controller.dart';

class SearchScreen extends GetView<SearchModel> with WidgetsBindingObserver {
  SearchController searchcontroller = Get.put(SearchController());
  //  String id = Get.arguments;
  // DetailProductController detailProductController =
  //     Get.put(DetailProductController());
  SearchScreen({Key? key}) : super(key: key);
  List<String> baner11 = [
    "lib/assets/asset/all.png",
    "lib/assets/asset/all.png",
    "lib/assets/asset/all.png",
  ];

  List<String> banner11text1 = [
    'All',
    'Man',
    'Women',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: PhysicalModel(
          color: Colors.white,
          elevation: 3,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 4.4.h,
            width: 55.w,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextField(
              controller: searchcontroller.value1,
              // onChanged: (query) {
              //   print("Current value is: ${query}");
              //   if ((query.length % 2 == 0) ||
              //       (query[query.length - 1] == '')) {
              //     searchcontroller.callSearchApi();
              //   }
              // },
              onSubmitted: (query) {
                searchcontroller.callSearchApi();
              },
              decoration: InputDecoration(
                suffixIcon: const Icon(
                  Icons.search_rounded,
                  color: Colors.grey,
                ),
                hintText: 'Search..',
                hintStyle: const TextStyle(fontSize: 12, color: Colors.grey),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 2.w),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.filter_alt_outlined,
                color: Colors.grey,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            2.h.heightBox,
            Container(
              height: 21.h,
              width: 100.w,
              color: Colors.white,
              child: ListView.builder(
                // physics: NeverScrollableScrollPhysics(),

                itemBuilder: (BuildContext, index) {
                  return Column(
                    children: [
                      1.h.heightBox,

                      SizedBox(
                        height: 20.h,
                        width: 34.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 16.h,
                              width: 32.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.grey),
                              ),

                              child: image.Image.asset(
                                baner11[index],
                                fit: BoxFit.fill,
                              ),
                              //Image.asset(baner1[index],fit: BoxFit.fill,)),
                            ),
                            Text(
                              banner11text1[index],
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ).pSymmetric(h: 1.w),
                      )

                      //Image.asset('lib/assets/asset/sale1.png',fit: BoxFit.fill,)),
                      //AssetImage(images[index]),
                      //Text("This is title",style: TextStyle(fontSize: 10,),),
                    ],
                  ).paddingSymmetric(horizontal: 2.w);
                },
                itemCount: 3,
                shrinkWrap: true,
                //padding: EdgeInsets.all(2),
                scrollDirection: Axis.horizontal,
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            searchcontroller.obx(
              (search) => Column(children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Result',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        search!.filteredProductsCount.toString() +
                            ' Items Found',
                        // '15 Item Found',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade500,
                        ),
                      )
                    ],
                  ).paddingSymmetric(horizontal: 5.w),
                ),
                2.h.heightBox,
                Container(
                  height: 73.h,
                  width: 100.w,
                  color: Colors.white,
                  child: ListView.builder(
                    // physics: NeverScrollableScrollPhysics(),

                    itemBuilder: (BuildContext context, index) {
                      return InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                1.h.heightBox,

                                SizedBox(
                                  height: 16.h,
                                  width: 100.w,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 16.h,
                                        width: 32.w,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border:
                                              Border.all(color: Colors.grey),
                                        ),
                                        child: image.Image.asset(
                                          'lib/assets/asset/bg.png',
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            search.products[index].name,
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            search.products[index].category
                                                .parentCategory,
                                            style: const TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                          ),
                                          3.h.heightBox,
                                          SizedBox(
                                            height: 5.h,
                                            width: 16.w,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: const [
                                                Icon(
                                                  Icons.shopping_bag,
                                                  color: Color(0xff4DC0C9),
                                                  size: 22,
                                                ),
                                                Icon(
                                                    Icons
                                                        .favorite_outline_rounded,
                                                    color: Colors.black,
                                                    size: 22),
                                              ],
                                              //Icon(Icons.shopping_bag)
                                            ),
                                          ),
                                        ],
                                      ),
                                      4.w.widthBox,
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '₹' +
                                                search.products[index].price
                                                    .toString(),
                                            style: const TextStyle(
                                              fontSize: 16,
                                              color: Color(0xff4DC0C9),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ).pSymmetric(h: 5.w),
                                )

                                //Image.asset('lib/assets/asset/sale1.png',fit: BoxFit.fill,)),
                                //AssetImage(images[index]),
                                //Text("This is title",style: TextStyle(fontSize: 10,),),
                              ],
                            ),
                          ],
                        ),
                        onTap: () {
                          Get.to(() => ProductPage(),
                              arguments: search.products[index].id);
                        },
                      );
                    },
                    itemCount: search.filteredProductsCount,
                    shrinkWrap: true,
                    controller: searchcontroller.scrollController,
                    scrollDirection: Axis.vertical,

                    //padding: EdgeInsets.all(5),
                    //scrollDirection: Axis.horizontal,
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
