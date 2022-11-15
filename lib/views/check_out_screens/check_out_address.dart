import 'package:get/get.dart';
import 'package:sugandh/views/check_out_screens/check_out_payment.dart';
import 'package:sugandh/views/check_out_screens/checkout_summary.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:circle_checkbox/redev_checkbox.dart';

import '../../Controllers/place_order_controller.dart';
import '../../models/checkout_address_model.dart';
import 'checkbox_controller.dart';
import 'checkout_address_controller.dart';

class CheckoutAddress extends GetView<CheckoutAddressModel>
    with WidgetsBindingObserver {
  CheckoutAddress({Key? key}) : super(key: key);
  final Checkbox1 _checkbox1 = Get.put(Checkbox1());
  final CheckoutAddressController _checkoutAddressController =
      Get.put(CheckoutAddressController());
  final PlaceOrderController _placeOrderController =
      Get.put(PlaceOrderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Checkout',
          style: TextStyle(fontSize: 19, color: Color(0xff4DC0C9)),
        ),
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 22,
          color: Colors.black,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: _checkoutAddressController.Checkaddressform,
            child: Column(
              children: [
                3.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PhysicalModel(
                      color: Colors.white,
                      elevation: 2,
                      shape: BoxShape.circle,
                      child: Container(
                        height: 3.h,
                        width: 6.w,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          height: 3.h,
                          width: 5.w,
                          decoration: const BoxDecoration(
                            color: Color(0xff4DC0C9),
                            shape: BoxShape.circle,
                          ),
                        ).p4(),
                      ),
                    ),
                    Container(
                      height: 0.2.h,
                      width: 36.w,
                      color: Colors.black,
                    ),
                    PhysicalModel(
                      color: Colors.white,
                      elevation: 2,
                      shape: BoxShape.circle,
                      child: Container(
                        height: 3.h,
                        width: 6.w,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          height: 3.h,
                          width: 5.w,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ).p4(),
                      ),
                    ),
                    Container(
                      height: 0.2.h,
                      width: 36.w,
                      color: Colors.black,
                    ),
                    PhysicalModel(
                      color: Colors.white,
                      elevation: 2,
                      shape: BoxShape.circle,
                      child: Container(
                        height: 3.h,
                        width: 6.w,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          height: 3.h,
                          width: 5.w,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ).p4(),
                      ),
                    ),
                  ],
                ).pSymmetric(h: 4.w),
                2.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Address',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                      ),
                    ),
                    Text(
                      'Payment',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                      ),
                    ),
                    Text(
                      'Summary',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ).pSymmetric(h: 4.w),
                2.h.heightBox,
                Obx(
                  () => CircleCheckboxListTile(
                    activeColor: const Color(0xff4DC0C9),
                    title: const Text(
                      'Billing address is the same as delivery',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _checkbox1.value1.value,
                    onChanged: _checkbox1.value1,
                    //secondary: const Icon(Icons.hourglass_empty),
                  ),
                ),
                1.h.heightBox,
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Street 1',
                      style: TextStyle(fontSize: 10),
                    )).pSymmetric(h: 4.w),
                TextFormField(
                  validator: _checkoutAddressController.validatestreet1,
                  controller: _checkoutAddressController.Street1,
                  decoration: const InputDecoration(
                    hintText: 'Street ,Lane',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 0.5),
                    ),
                  ),
                ).pSymmetric(h: 4.w),
                3.h.heightBox,
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Street 1',
                      style: TextStyle(fontSize: 10),
                    )).pSymmetric(h: 4.w),
                TextFormField(
                  validator: _checkoutAddressController.validatestreet2,
                  controller: _checkoutAddressController.street2,
                  decoration: const InputDecoration(
                    hintText: 'XYZ Road',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 0.5),
                    ),
                  ),
                ).pSymmetric(h: 4.w),
                3.h.heightBox,
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'City',
                      style: TextStyle(fontSize: 10),
                    )).pSymmetric(h: 4.w),
                TextFormField(
                  validator: _checkoutAddressController.validatecity,
                  controller: _checkoutAddressController.city,
                  decoration: const InputDecoration(
                    hintText: 'Delhi',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 0.5),
                    ),
                  ),
                ).pSymmetric(h: 4.w),
                3.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'State',
                          style: TextStyle(fontSize: 10),
                        )),
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Country',
                          style: TextStyle(fontSize: 10),
                        )).pSymmetric(h: 34.w),
                  ],
                ).pSymmetric(h: 4.w),
                Row(
                  children: [
                    SizedBox(
                      width: 50.w,
                      child: TextFormField(
                        validator: _checkoutAddressController.validatestate,
                        controller: _checkoutAddressController.state2,
                        decoration: const InputDecoration(
                          hintText: 'Delhi',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 0.5),
                          ),
                        ),
                      ).pSymmetric(h: 4.w),
                    ),
                    SizedBox(
                      width: 50.w,
                      child: TextFormField(
                        validator: _checkoutAddressController.validateCountry,
                        controller: _checkoutAddressController.Country,
                        decoration: const InputDecoration(
                          hintText: 'India',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 0.5),
                          ),
                        ),
                      ).pSymmetric(h: 4.w),
                    ),
                  ],
                ),
                5.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Padding(
                    //   padding: EdgeInsets.only(bottom: 2.h),
                    //   child: Container(
                    //     height: 52,
                    //     width: 170,
                    //     decoration: BoxDecoration(
                    //       color: Colors.white,
                    //       border: Border.all(color: Colors.black),
                    //       borderRadius: BorderRadius.circular(4.sp),
                    //     ),
                    //     child: 'BACK'
                    //         .text
                    //         .size(10.sp)
                    //         .letterSpacing(1.5)
                    //         .bold
                    //         .black
                    //         .make()
                    //         .centered(),
                    //   ).onTap(() {
                    //     Get.back();

                    //     //_signupController.CheckSignup();
                    //     //Get.to(()=> CheckoutScreen());
                    //     //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
                    //   }),
                    // ),
                    Center(
                      child: Container(
                        height: 52,
                        width: 170,
                        decoration: BoxDecoration(
                          color: const Color(0xff4DC0C9),
                          borderRadius: BorderRadius.circular(15.sp),
                        ),
                        child: 'NEXT'
                            .text
                            .size(10.sp)
                            .letterSpacing(1.5)
                            .bold
                            .white
                            .make()
                            .centered(),
                      ).onTap(() async {
                        _checkoutAddressController.callcheckoutController();
                        await _placeOrderController.callPlaceOrdercontroller();
                        Get.to(() => CheckoutSummary());
                        _checkoutAddressController.openCheckout();

                        // Get.to(() => CheckOutPayment());
                        //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
                      }),
                    ),
                  ],
                ).pSymmetric(h: 4.w),
                1.h.heightBox,
                0.5.h.heightBox,
                0.5.h.heightBox,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
