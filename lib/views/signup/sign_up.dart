import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sugandh/views/login/login_screens.dart';
import 'package:sugandh/views/signup/signup_controller.dart';
import 'package:sugandh/widgets/constant.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../../services/shared_pref.dart';
import '../otp_screens/otp_page.dart';
import 'otp_verify_page.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  SignupController _signupController = Get.put(SignupController());

  var jsonResponse;
  var data1;

  signUp(String name, String phone, String password) async {
    // controller.isLoading.value = true;
    String url = "http://mern.online:4005/api/v1/register";
    Map body = {"name": name, "phone": phone, "password": password};
    print(body);

    var res = await http.Client().post(Uri.parse(url), body: body);

    var data = jsonDecode(res.body);
    // controller.isLoading.value = false;
    print(res.body);
    print(res.statusCode);

    if (res.statusCode == 201) {
      _signupController.writeotp = data['otp'];
      print('read otp is $data1');
      // print(data['token']);
      // SharedToken().token_save(data['token']);

      // controller.isLoading.value = false;
      print("Response status: ${res.statusCode}");
      // var jsonResponse = res.body;

      // controller.isLoading.value = true;
      // setState(() {
      //   isLoading = true;
      // });
      // var data = jsonDecode(jsonResp
      // print(jsonResponse[2]);
      // var data1 = data['message'];
      // print(data1);
      // print(jsonResponse);

      Get.to(OTP());
    }
    if (res.statusCode == 400) {
      var data = jsonDecode(res.body);
      // setState(() {
      //   isLoading = false;
      // });
      data1 = data['message'];
      print(data1);
      Get.snackbar("Error", data1.toString(),
          duration: const Duration(seconds: 3));
    }
    if (res.statusCode == 500) {
      var data = jsonDecode(res.body);
      // setState(() {
      //   isLoading = false;
      // });
      data1 = data['message'];
      print(data1);
      Get.snackbar("Error", data1.toString(),
          duration: const Duration(seconds: 3));
    }
    // else {
    //   Get.snackbar("Error", 'Please give correct credentials');
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: _signupController.signupform,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                2.h.heightBox,
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_sharp,
                        color: Colors.black,
                      )),
                ).p8(),

                4.h.heightBox,
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'SIGNUP',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: buttonColor,
                    ),
                  ),
                ).p8(),

                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'SignUp in to get started and experience',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ).p2(),

                11.h.heightBox,

                TextFormField(
                  validator: _signupController.validatename,
                  // controller: _signupController.name,
                  controller: _signupController.name,
                  decoration: InputDecoration(
                    hintText: 'Name',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 0.5),
                    ),
                  ),
                ).pSymmetric(h: 4.w),
                0.5.h.heightBox,
                TextFormField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  ],
                  //obscureText: true,
                  controller: _signupController.mobile,

                  decoration: InputDecoration(
                    hintText: 'Mobile ',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 0.5),
                    ),
                  ),
                ).pSymmetric(h: 4.w),
                0.5.h.heightBox,

                TextFormField(
                  obscureText: true,
                  controller: _signupController.password,
                  // validator: _signupController.validatePassword,
                  // controller: _signupController.password,

                  decoration: InputDecoration(
                    hintText: 'Password',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 0.5),
                    ),
                  ),
                ).pSymmetric(h: 4.w),
                0.5.h.heightBox,
                //
                // TextFormField(
                //   //obscureText: true,
                //   validator: _signupController.validateMobile,
                //   controller: _signupController.mobile,
                //
                //   decoration: InputDecoration(
                //     hintText: 'Mobile',
                //     enabledBorder: UnderlineInputBorder(
                //       borderSide: BorderSide(color: Colors.black),
                //
                //     ),
                //     focusedBorder: UnderlineInputBorder(
                //       borderSide: BorderSide(color: Colors.black, width: 0.5),
                //
                //     ),
                //   ),
                // ).pSymmetric(h: 4.w),
                // 0.5.h.heightBox,
                //
                // TextFormField(
                //   //obscureText: true,
                //   validator: _signupController.validategender,
                //   controller: _signupController.Gender,
                //
                //   decoration: InputDecoration(
                //     hintText: 'Gender',
                //     enabledBorder: UnderlineInputBorder(
                //       borderSide: BorderSide(color: Colors.black),
                //
                //     ),
                //     focusedBorder: UnderlineInputBorder(
                //       borderSide: BorderSide(color: Colors.black, width: 0.5),
                //
                //     ),
                //   ),
                // ).pSymmetric(h: 4.w),

                7.h.heightBox,

                Padding(
                  padding: EdgeInsets.only(bottom: 2.h),
                  child: Container(
                    height: 52,
                    width: 360,
                    decoration: BoxDecoration(
                      color: buttonColor,
                      border: Border.all(color: Colors.indigo),
                      borderRadius: BorderRadius.circular(4.sp),
                    ),
                    child: 'SUBMIT'
                        .text
                        .size(10.sp)
                        .letterSpacing(1.5)
                        .bold
                        .white
                        .make()
                        .centered(),
                  ).onTap(() {
                    signUp(
                        _signupController.name.text,
                        _signupController.mobile.text,
                        _signupController.password.text);

                    // _signupController.CheckSignup();
                    // Get.to(()=> OTP());
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
                  }),
                ),
                3.h.heightBox,

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'You have an account ?',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    6.h.heightBox,
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: buttonColor,
                        ),
                      ),
                    ).px8().onTap(() {
                      Get.to(() => SignUpScreen());
                    }),
                  ],
                ),

                5.h.heightBox,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
