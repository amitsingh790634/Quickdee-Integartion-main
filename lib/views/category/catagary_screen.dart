import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:sugandh/models/all_category_model.dart';
import 'package:sugandh/views/search_screen/search_page.dart';
import 'package:sugandh/views/view_category/view_category.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// import '../../Model/all_category_model.dart';
import 'controllers/category_controller.dart';

class CategoryPage extends GetView<AllCategoryModel>
    with WidgetsBindingObserver {
  CategoryController categorycontroller = Get.put(CategoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            'Category',
            style: TextStyle(
              color: Color(0xff4DC0C9),
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ).onTap(() {
            Get.back();
          }),
          actions: [
            const Icon(
              Icons.search,
              color: Colors.grey,
            ).onTap(() {
              Get.to(() => SearchScreen());
            }),
          ],
        ),
        body: categorycontroller.obx(
          (category) => Column(
            children: [
              Container(
                height: 85.h,
                width: 100.w,
                color: Colors.white,
                child: ListView.builder(
                  // physics: NeverScrollableScrollPhysics(),

                  itemBuilder: (BuildContext, index) {
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 16.h,
                                      width: 32.w,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.grey),
                                      ),
                                      child: Image.asset(
                                        'lib/assets/asset/kid.png',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          category!
                                              .categories[index].parentCategory,
                                          style: const TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        1.h.heightBox,
                                        const Text(
                                          '150 Items',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                          ),
                                        ),
                                        3.h.heightBox,
                                      ],
                                    ),
                                    4.w.widthBox,
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 22,
                                      color: Colors.black,
                                    )
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
                        Get.to(() => ViewCategory(),
                            arguments: category.categories[index].id);
                        // viewCategory.products[index].id);
                      },
                    );
                  },
                  itemCount: category!.categories.length,
                  shrinkWrap: true,
                  //padding: EdgeInsets.all(5),
                  //scrollDirection: Axis.horizontal,
                ),
              ),
            ],
          ),
        ));
  }
}
