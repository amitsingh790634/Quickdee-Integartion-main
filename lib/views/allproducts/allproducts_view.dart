import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:sugandh/models/all_products_model.dart';
import 'package:sugandh/views/allproducts/allproducts_view.dart';
import 'package:sugandh/views/allproducts/controllers/allproducts_controller.dart';
import 'package:sugandh/views/mywishlist/controllers/add_wishlist_controller.dart';
// import 'package:sugandh/widgets/models/all_products_model.dart';
// import 'package:sugandh/widgets/services/api_client.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/src/widgets/image.dart' as image;

// import '../../Model/all_products_model.dart';
import '../mywishlist/controllers/remove_wishlist_controller.dart';
import '../products/product_screen.dart';
import 'allproducts_view.dart';

class AllProducts extends GetView<AllProductsModel>
    with WidgetsBindingObserver {
  AllProductsController allProductscontroller =
      Get.put(AllProductsController());
  AddWishlistController addWishlistcontroller =
      Get.put(AddWishlistController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFE3E6EF),
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
          title: const Text(
            'All Products',
            style: TextStyle(
                color: Color(0xff4DC0C9),
                fontWeight: FontWeight.w600,
                fontSize: 19),
          ),
          centerTitle: true,
        ),
        body: allProductscontroller.obx((productdetails) => GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 2,
              mainAxisSpacing: 20,
              mainAxisExtent: 215,
            ),
            itemCount: productdetails!.productsCount,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
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
                                  // "Sunglasses1",
                                  productdetails.products[index].name,
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
                                        productdetails.products[index].price
                                            .toString(),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                    '₹' +
                                        productdetails.products[index].price
                                            .toString(),
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
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  child: Center(
                                      child: const Text(
                                    'Buy Now',
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.black),
                                  ).px(3)),
                                ).onTap(() {
                                  Get.to(() => ProductPage(),
                                      arguments:
                                          productdetails.products[index].id);
                                }),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.shopping_bag,
                                  color: Color(0xff4DC0C9),
                                  size: 20.0,
                                ),
                                2.h.heightBox,
                                Obx((() => allProductscontroller.isValue.value
                                    ? InkWell(
                                        onTap: () {
                                          RemoveWishlistController()
                                              .RemoveWishlistApi(productdetails
                                                  .products[index].id);
                                          allProductscontroller.isValue =
                                              true.obs;
                                        },
                                        child: const Icon(
                                          Icons.favorite_rounded,
                                          color: Colors.red,
                                          size: 20.0,
                                        ),
                                      )

                                    // InkWell(
                                    //     onTap: () {
                                    //       AddWishlistController()
                                    //           .callAddWishlistApi(productdetails
                                    //               .products[index].id);
                                    //     },
                                    //     child: const Icon(
                                    //       Icons.favorite_border,
                                    //       color: Colors.black,
                                    //       size: 20.0,
                                    //     ),
                                    //   )
                                    : InkWell(
                                        onTap: () {
                                          AddWishlistController()
                                              .callAddWishlistApi(productdetails
                                                  .products[index].id);
                                        },
                                        child: const Icon(
                                          Icons.favorite_border,
                                          color: Colors.black,
                                          size: 20.0,
                                        ),
                                      ))),
                              ],
                            ),
                          ],
                        ).pSymmetric(h: 3.w),
                      ),
                    ],
                  )).pSymmetric(h: 2.w);
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
