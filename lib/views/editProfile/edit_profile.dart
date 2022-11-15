import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'package:sizer/sizer.dart';
import 'package:sugandh/views/buttom_nav_bar/dash_bord.dart';
import 'package:sugandh/views/editProfile/controllers/edit_profile_controller.dart';
import 'package:sugandh/views/login/controller/login_controller.dart';

class EditProfile extends GetView<EditProfileController> {
  EditProfile({Key? key}) : super(key: key);
  final editController = Get.put(EditProfileController());
  // final token1 = Get.put(LoginController());
  // final token2 = Get.put(OtpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Edit Profile",
          style:
              TextStyle(color: Color(0xff4DC0C9), fontWeight: FontWeight.bold),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 3.h,
              ),
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 45,
                  child: CircleAvatar(
                    backgroundColor: Colors.greenAccent[100],
                    radius: 45,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage(
                          'lib/assets/asset/avatar.png'), //NetworkImage
                      radius: 45,
                    ), //CircleAvatar
                  ), //CircleAvatar
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "Change Profile ",
                style:
                    TextStyle(color: const Color(0xff4DC0C9), fontSize: 12.sp),
              ),
              TextFormField(
                controller: editController.namecont,
                decoration: const InputDecoration(
                  hintText: "Name",
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              TextFormField(
                controller: editController.emailcont,
                decoration: const InputDecoration(
                  hintText: "Email",
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              TextFormField(
                controller: editController.phonecont,
                decoration: const InputDecoration(
                  hintText: "Number",
                ),
              ),
              SizedBox(
                height: 10.h,
              ),

              InkWell(
                  onTap: () {
                    editController.callEditProfile();
                    // Get.to(MyDashBoard());
                  },
                  child: Obx((() => editController.isLoading.value
                      ? const Center(child: CircularProgressIndicator())
                      : Container(
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: MediaQuery.of(context).size.width * 9,
                          decoration: BoxDecoration(
                              color: const Color(0xff4DC0C9),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(
                            child: Text(
                              "UPDATE",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ))))
              // WelcomeButtonWidget(
              //   btnText: "UPDATE",
              //   ontap: edittProfile(
              //       editController.namecont.text,
              //       editController.namecont.text,
              //       editController.phonecont.text),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
