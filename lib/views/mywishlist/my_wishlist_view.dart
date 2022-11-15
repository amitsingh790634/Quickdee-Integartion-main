// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:sizer/sizer.dart';
// import 'package:sugandh/views/mywishlist/controllers/my_wishlist_controller.dart';
// import 'package:velocity_x/velocity_x.dart';
// import 'package:flutter/src/widgets/image.dart' as image;

// // import '../../Model/my_wishlist_model.dart';
// // import '../../widgets/models/my_wishlist_model.dart';
// import '../../models/my_wishlist_model.dart';
// import '../products/product_screen.dart';

// class MyWishlist extends GetView<MyWishlistModel> with WidgetsBindingObserver {
//   MyWishlistController myWishlistcontroller = Get.put(MyWishlistController());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: const Color(0xFFE3E6EF),
//           leading: IconButton(
//               onPressed: () {
//                 Get.back();
//               },
//               icon: const Icon(
//                 Icons.arrow_back_ios,
//                 color: Colors.black,
//               )),
//           title: const Text(
//             "My Wishlist",
//             style: TextStyle(
//               fontSize: 19,
//               color: Color(0xff4DC0C9),
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           centerTitle: true,
//         ),
//         body: myWishlistcontroller.obx((wishList) => GridView.builder(
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               crossAxisSpacing: 2,
//               mainAxisSpacing: 20,
//               mainAxisExtent: 215,
//             ),
//             itemCount: wishList!.wishlist.products.length,
//             itemBuilder: (BuildContext ctx, index) {
//               return wishList.wishlist.products.isEmpty
//                   ? const Text("No Products")
//                   : InkWell(
//                       child: Container(
//                           height: 19.h,
//                           width: 50.w,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             border: Border.all(color: Colors.grey, width: 1),

//                             //borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
//                           ),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               SizedBox(
//                                   height: 19.h,
//                                   width: 45.w,
//                                   child: Column(
//                                     children: [
//                                       Align(
//                                         alignment: Alignment.centerLeft,
//                                         child: Text(
//                                           wishList
//                                               .wishlist.products[index].name,
//                                           // productdetails.products[index].name,
//                                           style: const TextStyle(
//                                               fontSize: 12,
//                                               color: Colors.black,
//                                               fontWeight: FontWeight.bold),
//                                         ).px(3),
//                                       ),
//                                       1.h.heightBox,
//                                       Align(
//                                           alignment: Alignment.centerLeft,
//                                           child: Text(
//                                             //  '₹ 699',
//                                             '₹' +
//                                                 wishList.wishlist
//                                                     .products[index].price
//                                                     .toString(),
//                                             // productdetails.products[index].price
//                                             // .toString(),
//                                             style: const TextStyle(
//                                                 fontSize: 16,
//                                                 color: Colors.grey,
//                                                 fontWeight: FontWeight.bold),
//                                           )).px(3),
//                                       SizedBox(
//                                           width: 40.w,
//                                           height: 13.h,
//                                           child:
//                                               //   bool validUrl = Uri.parse((productdetails.products[index].images[0].url).isNotEmpty);
//                                               //   ? image.Image(image: NetworkImage(productdetails.products[index].images[0].url.toString()),)

//                                               //  :
//                                               const image.Image(
//                                             image: AssetImage(
//                                                 'lib/assets/asset/sunglasses.png'),
//                                           )
//                                           // child: Image.netwrok()
//                                           // child: NetworkImage(productdetails.products[index].images[0].url.toString()),
//                                           // child: Image.asset(
//                                           //   'lib/assets/asset/sunglasses.png',
//                                           // ),
//                                           ),
//                                     ],
//                                   )),
//                               Container(
//                                 height: 8.h,
//                                 color: const Color(0xFFF0F0F0),
//                                 width: 45.w,
//                                 child: Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       children: [
//                                         Text(
//                                             '₹' +
//                                                 wishList.wishlist
//                                                     .products[index].price
//                                                     .toString(),
//                                             // productdetails.products[index].price
//                                             //     .toString(),
//                                             style: const TextStyle(
//                                                 fontSize: 13,
//                                                 fontWeight: FontWeight.bold,
//                                                 color: Colors.black)),
//                                         2.h.heightBox,
//                                         Container(
//                                           height: 2.5.h,
//                                           width: 17.w,
//                                           decoration: BoxDecoration(
//                                             border: Border.all(
//                                                 color: const Color(0xff4DC0C9)),
//                                             borderRadius:
//                                                 BorderRadius.circular(3),
//                                           ),
//                                           child: Center(
//                                               child: const Text(
//                                             'Buy Now',
//                                             style: TextStyle(
//                                                 fontSize: 11,
//                                                 color: Colors.black),
//                                           ).px(3)),
//                                         ).onTap(() {
//                                           Get.to(() => ProductPage(),
//                                               arguments: wishList
//                                                   .wishlist.products[index].id);
//                                         }),
//                                       ],
//                                     ),
//                                     Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       children: [
//                                         const Icon(
//                                           Icons.shopping_bag,
//                                           color: Color(0xff4DC0C9),
//                                           size: 20.0,
//                                         ),
//                                         2.h.heightBox,
//                                         const Icon(
//                                           Icons.favorite,
//                                           color: Colors.red,
//                                           size: 20.0,
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ).pSymmetric(h: 3.w),
//                               ),
//                             ],
//                           )).pSymmetric(h: 2.w),
//                       // onTap: SharedToken().token_read());
//                     );
//             }))
//         //      Container(
//         //         child: InkWell(
//         //   child: Center(child: Container(child: Text("get data"))),
//         //   onTap: () {
//         //     allProductscontroller.AllProducts();
//         //   },
//         // ))

//         );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:sugandh/views/mywishlist/controllers/my_wishlist_controller.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/src/widgets/image.dart' as image;

import '../../models/my_wishlist_model.dart';
import '../products/product_screen.dart';

class MyWishlist extends GetView<MyWishlistModel> with WidgetsBindingObserver {
  MyWishlistController myWishlistcontroller = Get.put(MyWishlistController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFE3E6EF),
          leading: IconButton(
              onPressed: () {
                Get.delete<MyWishlistController>();

                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
          title: const Text(
            "My Wishlist",
            style: TextStyle(
              fontSize: 19,
              color: Color(0xff4DC0C9),
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: myWishlistcontroller.obx((wishList) => GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 2,
              mainAxisSpacing: 20,
              mainAxisExtent: 215,
            ),
            itemCount: wishList!.wishlist.products.length,
            itemBuilder: (BuildContext ctx, index) {
              return wishList.wishlist.products.isEmpty
                  ? const Text("No Products")
                  : InkWell(
                      child: Container(
                          height: 19.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey, width: 1),

                            //borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  height: 19.h,
                                  width: 45.w,
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          wishList
                                              .wishlist.products[index].name,
                                          // productdetails.products[index].name,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ).px(3),
                                      ),
                                      1.h.heightBox,
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            //  '₹ 699',
                                            '₹' +
                                                wishList.wishlist
                                                    .products[index].price
                                                    .toString(),
                                            // productdetails.products[index].price
                                            // .toString(),
                                            style: const TextStyle(
                                                fontSize: 16,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          )).px(3),
                                      SizedBox(
                                          width: 40.w,
                                          height: 13.h,
                                          child:
                                              //   bool validUrl = Uri.parse((productdetails.products[index].images[0].url).isNotEmpty);
                                              //   ? image.Image(image: NetworkImage(productdetails.products[index].images[0].url.toString()),)

                                              //  :
                                              const image.Image(
                                            image: AssetImage(
                                                'lib/assets/asset/sunglasses.png'),
                                          )
                                          // child: Image.netwrok()
                                          // child: NetworkImage(productdetails.products[index].images[0].url.toString()),
                                          // child: Image.asset(
                                          //   'lib/assets/asset/sunglasses.png',
                                          // ),
                                          ),
                                    ],
                                  )),
                              Container(
                                height: 8.h,
                                color: const Color(0xFFF0F0F0),
                                width: 45.w,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                            '₹' +
                                                wishList.wishlist
                                                    .products[index].price
                                                    .toString(),
                                            // productdetails.products[index].price
                                            //     .toString(),
                                            style: const TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black)),
                                        2.h.heightBox,
                                        Container(
                                          height: 2.5.h,
                                          width: 17.w,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: const Color(0xff4DC0C9)),
                                            borderRadius:
                                                BorderRadius.circular(3),
                                          ),
                                          child: Center(
                                              child: const Text(
                                            'Buy Now',
                                            style: TextStyle(
                                                fontSize: 11,
                                                color: Colors.black),
                                          ).px(3)),
                                        ).onTap(() {
                                          Get.to(() => ProductPage(),
                                              arguments: wishList
                                                  .wishlist.products[index].id);
                                        }),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.shopping_bag,
                                          color: Color(0xff4DC0C9),
                                          size: 20.0,
                                        ),
                                        2.h.heightBox,
                                        const Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                          size: 20.0,
                                        ),
                                      ],
                                    ),
                                  ],
                                ).pSymmetric(h: 3.w),
                              ),
                            ],
                          )).pSymmetric(h: 2.w),
                      // onTap: SharedToken().token_read());
                    );
            }))
        //      Container(
        //         child: InkWell(
        //   child: Center(child: Container(child: Text("get data"))),
        //   onTap: () {
        //     allProductscontroller.AllProducts();
        //   },
        // ))

        );
  }
}
