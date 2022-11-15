import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import 'package:sizer/sizer.dart';
import 'package:sugandh/views/RateProduct/controllers/rate_product_controller.dart';
// import 'package:sugandh/widgets/services/api_client.dart';

class RateProduct extends GetView<RateProductController> {
  RateProduct({Key? key}) : super(key: key);
  RateProductController rateProductController =
      Get.put(RateProductController());
  var rating1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 15,
            )),
        title: const Text(
          'Rate Product',
          style: TextStyle(
              color: Color(0xff4DC0C9),
              fontWeight: FontWeight.w600,
              fontSize: 19),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Center(
                child: Text(
              "How was your experience\n with the product ?",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 5.h,
            ),
            RatingBar.builder(
              initialRating: 1,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: false,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 5.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                rateProductController.rating = rating.toInt();
                rating1 = rating.toInt();
                // print(rating);
              },
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              height: 25.h,
              width: 80.w,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10.sp)),
              child: TextField(
                controller: rateProductController.comment,
                decoration: const InputDecoration(
                  hintText: "Write a Comment ",
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            InkWell(
              child: Obx((() => rateProductController.isLoading.value
                  ? const Center(child: CircularProgressIndicator())
                  : Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.70,
                      decoration: BoxDecoration(
                          color: const Color(0xff4DC0C9),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                        child: Text(
                          "SUBMIT",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ))),
              onTap: () {
                rateProductController.RateProduct();
              },
            ),
          ],
        ),
      ),
    );
  }
}
