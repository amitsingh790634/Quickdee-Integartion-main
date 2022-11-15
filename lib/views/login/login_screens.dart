import 'dart:convert';

import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sugandh/services/shared_pref.dart';
import 'package:sugandh/views/otp_screens/otp_page.dart';
import 'package:sugandh/views/signup/sign_up.dart';
import 'package:sugandh/widgets/constant.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../ForgetPassword/forgot_password_page.dart';
import '../buttom_nav_bar/dash_bord.dart';
import 'controller/login_controller.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  var data1;

  final LoginController _loginController = Get.put(LoginController());

  Login(String phone, String password) async {
    // controller.isLoading.value = true;
    String url = "http://mern.online:4005/api/v1/login";
    Map body = {"phone": phone, "password": password};
    print(body);

    var res = await http.Client().post(Uri.parse(url), body: body);
    // # otpResend.isLoading.value = false

    print(res.body);
    print(res.statusCode);

    var data = jsonDecode(res.body);
    // data1 = data;

    if (res.statusCode == 200) {
      print(data['token']);
      SharedToken().token_save(data['token']);
      Get.to(MyDashBoard());
    } else {
      Get.snackbar('Error', data['message'].toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: _loginController.loginform,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                12.h.heightBox,
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Welcome Back',
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
                    'Sign in to get started and experience',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ).p2(),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Great shoping deals',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ).p1(),
                11.h.heightBox,
                TextFormField(
                  validator: _loginController.validatename,
                  controller: _loginController.phone,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: 'Phone',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 0.5),
                    ),
                  ),
                ).pSymmetric(h: 4.w),
                TextFormField(
                  obscureText: true,
                  validator: _loginController.validatepassword,
                  controller: _loginController.password,
                  decoration: InputDecoration(
                    hintText: 'password',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 0.5),
                    ),
                  ),
                ).pSymmetric(h: 4.w),
                1.5.h.heightBox,
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Forgot Password ?',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: buttonColor,
                    ),
                  ),
                ).px8().onTap(() {
                  Get.to(() => ForgetScreen());
                }).pSymmetric(h: 2.w),
                4.h.heightBox,
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
                    child: 'SIGN IN'
                        .text
                        .size(10.sp)
                        .letterSpacing(1.5)
                        .bold
                        .white
                        .make()
                        .centered(),
                  ).onTap(() {
                    Login(_loginController.phone.text,
                        _loginController.password.text);

                    // _loginController.CheckLogin();
                    //Get.to(()=> OTPScreen());
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
                  }),
                ),
                5.h.heightBox,
                Padding(
                  padding: EdgeInsets.only(bottom: 2.h),
                  child: Container(
                    height: 52,
                    width: 360,
                    decoration: BoxDecoration(
                      //color: buttonColor,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20.sp),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'lib/assets/asset/Icon_Facebook.png',
                          height: 20,
                        ),
                        6.h.heightBox,
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Sign in With Facebook',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: buttonColor,
                            ),
                          ),
                        ).pOnly(right: 24.w),
                      ],
                    ).pSymmetric(h: 9.w),
                  ).onTap(() {
                    //_loginController.CheckLogin();
                    //Get.to(()=> LoginScreen());
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
                  }),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 2.h),
                  child: Container(
                    height: 52,
                    width: 360,
                    decoration: BoxDecoration(
                      //color: buttonColor,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(20.sp),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'lib/assets/asset/icons8_Google_2.png',
                          height: 20,
                        ),
                        6.h.heightBox,
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Sign in With Gmail',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: buttonColor,
                            ),
                          ),
                        ).pOnly(right: 24.w),
                      ],
                    ).pSymmetric(h: 9.w),
                  ).onTap(() {
                    //_loginController.CheckLogin();
                    //Get.to(()=> LoginScreen());
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePage()));
                  }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Don\'t have an account ?',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    6.h.heightBox,
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Sign Up',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
