import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sugandh/views/RateProduct/all_rating_view.dart';
import 'package:sugandh/views/RateProduct/controllers/all_rating_controller.dart';
import 'package:sugandh/views/RateProduct/rate_product.dart';
import 'package:sugandh/views/allproducts/allproducts_view.dart';
import 'package:sugandh/views/cart_screen/cart_page.dart';
import 'package:sugandh/views/cart_screen/controllers/add_cart_controller.dart';
// import 'package:sugandh/widgets/services/all_rating_provider.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/src/widgets/image.dart' as image;

import '../../models/detail_product_model.dart';
import '../mywishlist/controllers/add_wishlist_controller.dart';
import '../mywishlist/controllers/remove_wishlist_controller.dart';
import 'controllers/products_controller.dart';

class Produt2page extends GetView<DetailProductModel>
    with WidgetsBindingObserver {
  Produt2page({Key? key}) : super(key: key);
  DetailProductController detailProductController = Get.find();

  AddCartController addCartController = Get.put(AddCartController());

  RxBool isliked = false.obs;

  // AllRatingController allRatingController = Get.put(AllRatingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: detailProductController.obx(
          (productdetails) => (Column(
            children: [
              Container(
                height: 30.h,
                width: 100.w,
                decoration: BoxDecoration(
                    color: const Color(0xFFE3E6EF),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.sp),
                        bottomRight: Radius.circular(20.sp))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                            )),
                        const Text(
                          'Products',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 19,
                            color: Colors.black,
                          ),
                        ),

                        Obx(
                          () => IconButton(
                            onPressed: () {
                              if (isliked.value == false) {
                                AddWishlistController().callAddWishlistApi(
                                    detailProductController.id);

                                print(isliked.value);
                                isliked.value = true;
                              } else {
                                RemoveWishlistController().RemoveWishlistApi(
                                    detailProductController.id);
                                print(isliked.value);
                                isliked.value = false;
                                // isliked = false.obs;
                              }
                            },
                            icon: isliked.value
                                ? Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                : Icon(
                                    Icons.favorite_border,
                                    color: Colors.black,
                                  ),
                          ),
                        ),
                        // IconButton(
                        //   onPressed: () {
                        //     AddWishlistController()
                        //         .callAddWishlistApi(detailProductController.id);
                        //   },
                        //   icon: const Icon(
                        //     Icons.favorite_border,
                        //     color: Colors.black,
                        //   ),
                        // ),
                      ],
                    ).pSymmetric(h: 5.w),
                    image.Image.asset(
                      'lib/assets/asset/sunglasses.png',
                      height: 20.h,
                      width: 73.7.w,
                    ),
                  ],
                ),
              ),
              3.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    productdetails!.product.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '₹' + productdetails.product.price.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 19,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ],
              ).pSymmetric(h: 5.w),
              5.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 4.h,
                    width: 35.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                      ),
                      color: const Color(0xFFFFFCFC),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Size',
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 13,
                              fontWeight: FontWeight.w900),
                        ),
                        const Text(
                          'M',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ).pSymmetric(h: 1.5.h),
                  ),
                  // AllRatingController().callAllRatingApi();
                  Container(
                    height: 4.h,
                    width: 35.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                      ),
                      color: const Color(0xFFFFFCFC),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Colour',
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 13,
                              fontWeight: FontWeight.w900),
                        ),
                        Container(
                          height: 3.h,
                          width: 5.w,
                          decoration: const BoxDecoration(
                              color: Colors.black, shape: BoxShape.circle),
                        ),
                      ],
                    ).pSymmetric(h: 1.5.h),
                  ),
                ],
              ).pSymmetric(h: 5.w),
              3.h.heightBox,
              Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Description',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black),
                ).pSymmetric(h: 5.w),
              ),
              1.h.heightBox,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  productdetails.product.description,
                  style: const TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 13,
                      color: Colors.black),
                ).pSymmetric(h: 5.w),
              ),
              3.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.h),
                    child: Container(
                      height: 45,
                      width: 160,
                      decoration: BoxDecoration(
                        color: const Color(0xff4DC0C9),
                        //border: Border.all(color: Colors.indigo),
                        borderRadius: BorderRadius.circular(15.sp),
                      ),
                      child: 'ADD TO CART'
                          .text
                          .size(11.sp)
                          .letterSpacing(1.5)
                          .bold
                          .white
                          .make()
                          .centered(),
                    ).onTap(() {
                      addCartController.addCartApi(detailProductController.id);
                      // Get.to(const CartPage());
                      // _signupController.CheckSignup();
                      //Get.to(()=> Produt2page());
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
                    }),
                  ),
                  Container(
                    height: 4.h,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffE3E980),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Icon(
                          Icons.remove,
                          color: Colors.black,
                        ),
                      ],
                    ).pSymmetric(h: 1.w),
                  ),
                ],
              ).pSymmetric(h: 4.w),
              1.5.h.heightBox,
              Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'You ay Also Like',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black),
                ).pSymmetric(h: 5.w),
              ),
              Container(
                height: 17.h,
                width: 100.w,
                color: Colors.white,
                child: ListView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext, index) {
                    return Row(
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
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: Colors.grey),
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
                                      const Text(
                                        'White Shoes',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const Text(
                                        'Men',
                                        style: TextStyle(
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
                                              MainAxisAlignment.spaceBetween,
                                          children: const [
                                            Icon(
                                              Icons.shopping_bag,
                                              color: Color(0xff4DC0C9),
                                              size: 22,
                                            ),
                                            Icon(Icons.favorite_outline_rounded,
                                                color: Colors.black, size: 22),
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
                                    children: const [
                                      Text(
                                        '₹699',
                                        style: TextStyle(
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
                    );
                  },
                  itemCount: 5,
                  shrinkWrap: true,
                  //padding: EdgeInsets.all(5),
                  //scrollDirection: Axis.horizontal,
                ),
              ),
              2.h.heightBox,
              InkWell(
                onTap: () {
                  Get.to(RateProduct());
                },
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Reviews',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.sp),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Column(
                          children: [
                            Text(
                              "ADD YOUR COMMENT",
                              style: TextStyle(
                                  color: const Color(0xff4DC0C9),
                                  fontSize: 13.sp),
                            )
                          ],
                        )
                      ],
                    ).paddingSymmetric(horizontal: 5.w),
                  ],
                ),
              ),
              0.5.heightBox,
              Container(
                height: 17.h,
                width: 100.w,
                color: Colors.white,
                child: AllRatingPage(),
                //  ListView.builder(
                //     // physics: NeverScrollableScrollPhysics(),

                //     itemBuilder: (BuildContext, index) {
                //       return Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Column(
                //             children: [
                //               1.h.heightBox,

                //               SizedBox(
                //                 height: 14.h,
                //                 width: 100.w,
                //                 child: Row(
                //                   mainAxisAlignment:
                //                       MainAxisAlignment.spaceBetween,
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: [
                //                     CircleAvatar(
                //                       backgroundColor: Colors.green,
                //                       radius: 22,
                //                       child: CircleAvatar(
                //                         backgroundColor: Colors.greenAccent[100],
                //                         radius: 21,
                //                         child: const CircleAvatar(
                //                           backgroundImage: AssetImage(
                //                               'lib/assets/asset/avatar.png'), //NetworkImage
                //                           radius: 19,
                //                         ), //CircleAvatar
                //                       ), //CircleAvatar
                //                     ),
                //                     Column(
                //                       crossAxisAlignment:
                //                           CrossAxisAlignment.start,
                //                       mainAxisAlignment:
                //                           MainAxisAlignment.spaceBetween,
                //                       children: [
                //                         const Text(
                //                           'Ander',
                //                           style: TextStyle(
                //                               fontSize: 13,
                //                               color: Colors.black,
                //                               fontWeight: FontWeight.bold),
                //                         ),
                //                         const Text(
                //                           'Wonderfull glasses,perfect gft my\n'
                //                           'girl for our anivercy',
                //                           style: TextStyle(
                //                             fontSize: 11,
                //                             color: Colors.black,
                //                           ),
                //                         ),
                //                         7.h.heightBox,
                //                       ],
                //                     ),
                //                     4.w.widthBox,
                //                     Column(
                //                       crossAxisAlignment:
                //                           CrossAxisAlignment.start,
                //                       mainAxisAlignment:
                //                           MainAxisAlignment.spaceBetween,
                //                       children: [
                //                         VxRating(
                //                           onRatingUpdate: (value) {},
                //                           count: 5,
                //                           selectionColor: Colors.yellow,
                //                           size: 20,
                //                         ),
                //                       ],
                //                     ),
                //                   ],
                //                 ).pSymmetric(h: 5.w),
                //               )

                //               //Image.asset('lib/assets/asset/sale1.png',fit: BoxFit.fill,)),
                //               //AssetImage(images[index]),
                //               //Text("This is title",style: TextStyle(fontSize: 10,),),
                //             ],
                //           ),
                //         ],
                //       );
                //     },
                //     itemCount: 5,
                //     shrinkWrap: true,
                //     //padding: EdgeInsets.all(5),
                //     //scrollDirection: Axis.horizontal,
                //   ),
                // ),

                // 2.h.heightBox,
              )
            ],
          )),
        ),
      ),
    ));
  }
}
