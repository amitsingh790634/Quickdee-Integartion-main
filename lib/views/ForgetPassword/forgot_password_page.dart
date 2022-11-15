import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:sizer/sizer.dart';
import 'package:sugandh/views/otp_screens/otp_controller.dart';
import 'package:sugandh/views/otp_screens/phone_controller.dart';
import 'package:sugandh/views/otp_screens/time_controller.dart';
import 'package:sugandh/widgets/constant.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;

import '../buttom_nav_bar/dash_bord.dart';
import '../login/login_screens.dart';
import '../otp_screens/change_password.dart';
import 'forgetpassword_controller.dart';

class ForgetScreen extends StatelessWidget {
  PassController passController = Get.put(PassController());
  var code;
  var data;
  var data1;

  forgotPassword(String phone) async {
    // forgotController.isLoading.value = true;
    String url = "https://ecom-flyweis.herokuapp.com/api/v1/password/forgot";
    Map body = {
      "phone": phone,
    };
    print(body);

    var res = await http.Client().post(Uri.parse(url), body: body);
    // forgotController.isLoading.value = false;
    print(res.body);
    print(res.statusCode);

    if (res.statusCode == 200) {
      print("Response status: ${res.statusCode}");
      var jsonResponse = res.body;
      print(jsonResponse);

      // Get.to(OtpResend());
    } else {
      Get.snackbar('Error', 'Please enter a valid Phone Number');
    }
    // if (res.statusCode == 400) {
    //   var data = jsonDecode(res.body);
    //   data1 = data['message'];
    //   print(data1);
    //   Get.snackbar("Error", data1.toString(),
    //       duration: const Duration(seconds: 3));
    // }
    // if (res.statusCode == 500) {
    //   var data = jsonDecode(res.body);
    //   // setState(() {
    //   //   isLoading = false;
    //   // });
    //   data1 = data['message'];
    //   print(data1);
    //   Get.snackbar("Error", data1.toString(),
    //       duration: const Duration(seconds: 3));
    // }
    // else {
    //   Get.snackbar("Error", 'Please give correct credentials');
    // }
  }

  SendOTP() async {
    String url = "https://ecom-flyweis.herokuapp.com/api/v1/password/forgot";

    Map body = {"phone": passController.phone.text};
    print(body);

    var res = await http.Client().post(Uri.parse(url), body: body);
    print(res.statusCode);
    print(res.body);

    if (res.statusCode == 200) {
      print('Your OTP is : {$res.statusCode}');
    } else {
      print('Your phone number is not registered');
    }
  }

  VerifyOTP(String otp) async {
    // otpResend.isLoading.value = true;
    String url =
        "https://ecom-flyweis.herokuapp.com/api/v1/password/verify-otp";

    Map body = {"phone": passController.phone.text, "otp": otp};
    print(body);

    var res = await http.Client().post(Uri.parse(url), body: body);
    // # otpResend.isLoading.value = false;

    print(res.body);
    print(res.statusCode);
    var data;

    if (res.statusCode == 200) {
      data = jsonDecode(res.body);
      passController.resetToken = data["resetToken"];
      print(data);
      Get.to(() => ChangePasswordScreen());

      // Get.to(() => MyDashBoard());
      // data1 = data['message'];
      // print(data1);
      // Get.snackbar("Error", data1.toString(),
      //     duration: const Duration(seconds: 3));
    } else {
      Get.snackbar("Error", "data['message']");
    }

    // if (res.statusCode == 500) {
    //   var data = jsonDecode(res.body);
    //   // setState(() {
    //   //   isLoading = false;
    //   // });
    //   data1 = data['message'];
    //   print(data1);
    //   Get.snackbar("Error", data1.toString(),
    //       duration: const Duration(seconds: 3));
    // }
    // else {
    //   Get.snackbar("Error", 'Please give correct credentials');
    // }
  }

  ForgetScreen({Key? key, this.phone}) : super(key: key);
  // TextEditingController _otpController = TextEditingController();
  // TextEditingController _phone1Controller = TextEditingController();
  final phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        // key: _timeController.otpKey,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                2.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_sharp,
                          color: Colors.black,
                          size: 20,
                        )),
                    TextButton(
                      onPressed: (() {
                        Get.to(LoginScreen());
                      }),
                      child: const Text(
                        'SignIn',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    )
                  ],
                ).p16(),
                6.h.heightBox,

                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Reset Password',
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
                    'Enter your registered phone number',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ).p2(),

                // const Align(
                //   alignment: Alignment.center,
                //   child: Text(
                //     'submit 5 digit otp to reset your password',
                //     style: TextStyle(
                //       fontSize: 12,
                //       fontWeight: FontWeight.bold,
                //       color: Colors.grey,
                //     ),
                //   ),
                // ).p1(),

                6.h.heightBox,
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Mobile Number',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: buttonColor,
                    ),
                  ),
                ).px32(),
                1.h.heightBox,

                Form(
                  // key: _phoneController.phone_numberform,
                  child: Container(
                    height: 5.h,
                    child: TextFormField(
                      controller: passController.phone,
                      // validator: (value){
                      //   return _phone1Controller.validateNumber(value!);
                      // },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 15),
                          //filled: true,
                          //fillColor: Colors.blue.shade100,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            //borderSide: BorderSide.none,
                          )),
                    ).px32(),
                  ),
                ),

                3.h.heightBox,

                Padding(
                  padding: EdgeInsets.only(bottom: 2.h),
                  child: Container(
                    height: 32,
                    width: 100,
                    decoration: BoxDecoration(
                      color: buttonColor,
                      border: Border.all(color: Colors.indigo),
                      borderRadius: BorderRadius.circular(4.sp),
                    ),
                    child: 'SEND OTP'
                        .text
                        .size(8.sp)
                        .letterSpacing(1)
                        .bold
                        .white
                        .make()
                        .centered(),
                  ).onTap(() {
                    SendOTP();
                    // _phoneController.checkEmail();

                    // _loginController.CheckLogin();
                    //Get.to(()=> OTPScreen());
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
                  }),
                ),
                3.h.heightBox,

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

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     for(int i = 0; i <4; i++)
                //       OtpInput(
                //           validator: _timeController.otpValidator,
                //           controller:_timeController.otp[i], autoFocus: i == 0? true: false ),
                //
                //
                //   ],
                // ),

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
                  VerifyOTP(code);
                }),
                2.h.heightBox,
                // Obx(()=> Text(_timeController.elapsedTime.value)),

                Align(
                        alignment: Alignment.center,
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
