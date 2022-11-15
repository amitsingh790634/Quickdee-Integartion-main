import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:sugandh/views/buttom_nav_bar/dash_bord.dart';

import 'package:velocity_x/velocity_x.dart';

class TrackMap extends StatelessWidget {
  const TrackMap({Key? key}) : super(key: key);

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
          'Tracking Order',
          style: TextStyle(
              color: Color(0xff4DC0C9),
              fontWeight: FontWeight.w600,
              fontSize: 19),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            2.h.heightBox,
            const Align(
                alignment: Alignment.center,
                child: Text(
                  'Order No.#123-456',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                )),
            2.h.heightBox,
            Container(
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width * 1,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/asset/map.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.all(10.sp),
                    height: 100,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.sp)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            borderRadius: BorderRadius.circular(15.sp),
                          ),
                          child: const Icon(
                            Icons.airplanemode_active,
                            color: Color(0xff4DC0C9),
                          ),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              "XYZ Delievery",
                              style: TextStyle(color: Color(0xff4DC0C9)),
                            ),
                            Text(
                              "Shipped ",
                              style: TextStyle(
                                  fontSize: 15.sp, fontWeight: FontWeight.bold),
                            ),
                            const Text("House Number,Delhi")
                          ],
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10.sp),
                            image: const DecorationImage(
                              image: AssetImage(
                                  'lib/assets/asset/ordergoogle.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  10.h.heightBox,
                  Center(
                      child: Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.80,
                    decoration: BoxDecoration(
                        color: const Color(0xff4DC0C9),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                      child: Text(
                        "CONTINUE SHOPPING",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ).onTap(() {
                    Get.to(MyDashBoard());
                  })),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
