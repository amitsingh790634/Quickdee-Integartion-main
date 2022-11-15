import 'package:circle_checkbox/redev_checkbox.dart';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

import 'checkbox_controller.dart';
import 'checkout_payment_controller.dart';

class CheckOutPayment extends StatelessWidget {
  CheckOutPayment({Key? key}) : super(key: key);
  final Checkbox1 _checkbox1 = Get.put(Checkbox1());
  final CheckoutPaymentController _checkoutPaymentController =
      Get.put(CheckoutPaymentController());

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
        ).onTap(() {
          Get.back();
        }),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: _checkoutPaymentController.Checkpaymentform,
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
                      color: const Color(0xff4DC0C9),
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
                            color: Color(0xff4DC0C9),
                            shape: BoxShape.circle,
                          ),
                        ).p4(),
                      ),
                    ),
                    Container(
                      height: 0.2.h,
                      width: 36.w,
                      color: const Color(0xff4DC0C9),
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
                        color: Colors.black,
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
                Row(
                  children: [
                    Container(
                      height: 3.h,
                      width: 10.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black),
                      ),
                    ).px4(),
                    Container(
                      height: 3.h,
                      width: 10.w,
                      decoration: BoxDecoration(
                        color: const Color(0xff4DC0C9),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black),
                      ),
                      child: const Icon(
                        Icons.credit_card,
                        color: Colors.white,
                        size: 12,
                      ),
                    ).px4(),
                    Container(
                      height: 3.h,
                      width: 10.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black),
                      ),
                    ).px4(),
                    Container(
                      height: 3.h,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: Text(
                          'Manage Payment Method',
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff4DC0C9)),
                        ),
                      ),
                    ).pOnly(left: 19.w).onTap(() {}),
                  ],
                ).pSymmetric(h: 3.w),
                5.h.heightBox,
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Name on Card',
                      style: TextStyle(fontSize: 10),
                    )).pSymmetric(h: 4.w),
                TextFormField(
                  validator: _checkoutPaymentController.validatecard,
                  controller: _checkoutPaymentController.card,
                  decoration: const InputDecoration(
                    hintText: 'Visa',
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
                      'Card Number',
                      style: TextStyle(fontSize: 10),
                    )).pSymmetric(h: 4.w),
                TextFormField(
                  validator: _checkoutPaymentController.validatecardnumber,
                  controller: _checkoutPaymentController.cardnumber,
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset(
                        'lib/assets/asset/Icon_MasterCard.png',
                        height: 5,
                        width: 0.5.w,
                      ),
                    ),
                    hintText: '4560  5644  3224  4543',
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: const UnderlineInputBorder(
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
                          'Expiry Date',
                          style: TextStyle(fontSize: 10),
                        )),
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'CVV',
                          style: TextStyle(fontSize: 10),
                        )).pSymmetric(h: 36.w),
                  ],
                ).pSymmetric(h: 4.w),
                Row(
                  children: [
                    SizedBox(
                      width: 50.w,
                      child: TextFormField(
                        validator:
                            _checkoutPaymentController.validateexpirydate,
                        controller: _checkoutPaymentController.expirydate,
                        decoration: const InputDecoration(
                          hintText: '09/20',
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
                        validator: _checkoutPaymentController.validatecvv,
                        controller: _checkoutPaymentController.cvv,
                        decoration: const InputDecoration(
                          hintText: '467',
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
                2.h.heightBox,
                Obx(
                  () => CircleCheckboxListTile(
                    activeColor: const Color(0xff4DC0C9),
                    title: const Text(
                      'Save this card details',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: _checkbox1.value2.value,
                    onChanged: _checkbox1.value2,
                    //secondary: const Icon(Icons.hourglass_empty),
                  ),
                ),
                3.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 2.h),
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
                      ).onTap(() {
                        _checkoutPaymentController.Checkcvv();
                        //Get.to(()=> CheckOutPayment());
                        //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
                      }),
                    ),
                  ],
                ).pSymmetric(h: 4.w),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
