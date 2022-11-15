import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import 'package:sugandh/views/buttom_nav_bar/botom_nav_bar.dart';
import 'package:sugandh/views/buttom_nav_bar/dash_bord.dart';
import 'package:sugandh/views/otp_screens/otp_page.dart';

class LoginController extends GetxController {
  GlobalKey<FormState> loginform = GlobalKey();



  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();


  //................................

  @override
  void onInit() {
    super.onInit();
    phone;
    password;
  }

  String ? validatename(value) {
    if (value == '') {
      return ' please enter phone';
    }
    return null;
  }
  CheckPhone () {
    var isValidate = loginform.currentState!.validate();
    if (!isValidate) {
      return;
    }
    else {
      //Get.to(()=> OTPScreen());
    }
    loginform.currentState!.save();
  }


  String ? validatepassword(value) {
    if (value == '') {
      return 'please enter your password';
    }
    return null;
  }
  Checkpassword () {
    var isValidate = loginform.currentState!.validate();
    if (!isValidate) {
      return;
    }
    else {
      //Get.to(()=> HomePage());
    }
    loginform.currentState!.save();
  }


  CheckLogin () {
    var isValidate = loginform.currentState!.validate();
    if (!isValidate) {
      return;
    }
    else {

      Get.to(()=>MyDashBoard());
      //Get.to(()=> OTPScreen());

      //Get.to(()=> HomePage());
      //callAdduserApi();
    }
    loginform.currentState!.save();
  }
  // void callAdduserApi() async {
  //   http.Response r = await ApiProvider.addUser(name.text,email.text,age.text,mobile.text);
  //   if(r.statusCode==200){
  //     Get.to(()=> HomePage());
  //   }
  // }
}