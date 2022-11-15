import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:sizer/sizer.dart';
import 'package:sugandh/views/login/login_screens.dart';
import 'package:sugandh/views/signup/sign_up.dart';
import 'package:sugandh/views/signup/signup_controller.dart';
import 'package:sugandh/widgets/constant.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;

import '../buttom_nav_bar/dash_bord.dart';

class OTP extends StatelessWidget {
  var code;
  var data;
  var data1;
  SignupController _signupController = Get.put(SignupController());

  // RegistrationVerify(String phone) async {
  //   // forgotController.isLoading.value = true;
  //   String url = "https://ecom-flyweis.herokuapp.com/api/v1/verifyRegistration";
  //   Map body = {
  //     "phone": phone,
  //   };
  //   print(body);
  //
  //   var res = await http.Client().post(Uri.parse(url), body: body);
  //   // forgotController.isLoading.value = false;
  //   print(res.body);
  //   print(res.statusCode);
  //
  //   if (res.statusCode == 200) {
  //     print("Response status: ${res.statusCode}");
  //     var jsonResponse = res.body;
  //     print(jsonResponse);
  //
  //     // Get.to(OtpResend());
  //   } else {
  //     Get.snackbar('Error', 'Please enter a valid Phone Number');
  //   }
  //   // if (res.statusCode == 400) {
  //   //   var data = jsonDecode(res.body);
  //   //   data1 = data['message'];
  //   //   print(data1);
  //   //   Get.snackbar("Error", data1.toString(),
  //   //       duration: const Duration(seconds: 3));
  //   // }
  //   // if (res.statusCode == 500) {
  //   //   var data = jsonDecode(res.body);
  //   //   // setState(() {
  //   //   //   isLoading = false;
  //   //   // });
  //   //   data1 = data['message'];
  //   //   print(data1);
  //   //   Get.snackbar("Error", data1.toString(),
  //   //       duration: const Duration(seconds: 3));
  //   // }
  //   // else {
  //   //   Get.snackbar("Error", 'Please give correct credentials');
  //   // }
  // }

  VerifyOTP(String phone, String otp) async {
    String url = "http://mern.online:4005/api/v1/verifyRegistration";
    Map body = {"phone": phone, "otp": otp};
    print(body);

    var res = await http.Client().post(Uri.parse(url), body: body);

    print(res.body);
    print(res.statusCode);

    if (res.statusCode == 201) {
      var data = jsonDecode(res.body);
      print(data);

      Get.to(() => MyDashBoard());
    } else {
      return Get.snackbar('error', 'This is invalid number');
    }
  }

  OTP({Key? key, this.phone}) : super(key: key);

  final phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                27.h.heightBox,

                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Verification',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: buttonColor,
                    ),
                  ),
                ).p8(),

                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'A 5 Digit PIN has been sent to Your',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ).p2(),

                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'phone Enter it below to continue',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ).p1(),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'please enter this otp below ' +
                        _signupController.writeotp.toString(),
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      // color: Colors.grey,
                    ),
                  ),
                ).p1(),
                3.h.heightBox,
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // for(int i = 0; i <4; i++)
                    OTPTextField(
                        // controller: otpController,
                        length: 5,
                        width: MediaQuery.of(context).size.width,
                        textFieldAlignment: MainAxisAlignment.spaceEvenly,
                        fieldWidth: 45,
                        fieldStyle: FieldStyle.box,
                        outlineBorderRadius: 0,
                        style: const TextStyle(fontSize: 17),
                        onChanged: (pin) {
                          code = pin;
                          // print("Changed: " + pin);
                        },
                        onCompleted: (pin) {
                          code = pin;
                          print("Completed: " + code);
                        }),
                  ],
                ),

                3.h.heightBox,
                Container(
                  height: 52,
                  width: 320,
                  decoration: BoxDecoration(
                    color: buttonColor,
                    border: Border.all(color: Colors.indigo),
                    borderRadius: BorderRadius.circular(4.sp),
                  ),
                  child: 'CONTINUE'
                      .text
                      .size(10.sp)
                      .letterSpacing(1.5)
                      .bold
                      .white
                      .make()
                      .centered(),
                ).onInkTap(() {
                  VerifyOTP(_signupController.mobile.text, code);
                  print("Completed: " + code);

                  // _timeController.otpdigits();
                  // _timeController.checkValidation(phone);
                  // _timeController.
                  //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(_timeController.result.toString())));
                }),
                // Obx(()=> Text(_timeController.elapsedTime.value)),

                Align(
                        alignment: Alignment.centerRight,
                        child: "Resend OTP".text.black.size(11.sp).end.make())
                    .pSymmetric(h: 8.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
