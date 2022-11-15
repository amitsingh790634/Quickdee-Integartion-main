import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:sugandh/views/login/login_screens.dart';
import 'package:sugandh/views/settings/setting_page.dart';
import 'package:sugandh/views/track_order/track_screen.dart';
import 'package:sugandh/widgets/drower_box.dart';
import 'package:velocity_x/velocity_x.dart';


class AcoountPage extends StatelessWidget {
  const AcoountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey <ScaffoldState> _key= GlobalKey();
    return Scaffold(
      key: _key,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          height: 2.h,
          width: 2.w,
          child: Image.asset('lib/assets/asset/menu.png',fit: BoxFit.fitWidth,).p16().onTap(() {
            _key.currentState!.openDrawer();
          }),
        ),
        title: Text('Account',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700
        ,fontSize: 19),),
        centerTitle: true,

      ),
      drawer: OpenDrawer(),

      body: Column(
        children: [
          0.h.heightBox,
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 45,
                child: CircleAvatar(
                  backgroundColor: Colors.greenAccent[100],
                  radius: 45,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('lib/assets/asset/avatar.png') ,//NetworkImage
                    radius: 45,
                  ), //CircleAvatar
                ), //CircleAvatar
              ),

              10.w.widthBox,

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Jameson Dunn',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400
                      ,fontSize: 16),),
                  0.6.h.heightBox,
                  Text('jamesonhunn@gmail.com',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400
                      ,fontSize: 12),),

                ],
              ),


            ],
          ).pSymmetric(h: 4.5.w),

          5.h.heightBox,

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Container(

                child: Row(
                  children: [
                    Image.asset('lib/assets/asset/Icon_Edit-Profile.png',height: 40,),
                    4.w.widthBox,

                    Text('Edit Profile',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400
                        ,fontSize: 15),),


                  ],
                ),
              ),

              IconButton(onPressed: (){},
                  icon: Icon(Icons.arrow_forward_ios,size: 18,)),
            ],
          ).pSymmetric(h: 4.5.w),

          1.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Container(

                child: Row(
                  children: [
                    Image.asset('lib/assets/asset/Icon_Location.png',height: 40,),
                    4.w.widthBox,

                    Text('Shoping Address',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400
                        ,fontSize: 15),),


                  ],
                ),
              ),

              IconButton(onPressed: (){},
                  icon: Icon(Icons.arrow_forward_ios,size: 18,)),
            ],
          ).pSymmetric(h: 4.5.w),

          1.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Container(

                child: Row(
                  children: [
                    Image.asset('lib/assets/asset/Icon_Wishlist.png',height: 40,),
                    4.w.widthBox,

                    Text('Wishlist',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400
                        ,fontSize: 15),),


                  ],
                ),
              ),

              IconButton(onPressed: (){},
                  icon: Icon(Icons.arrow_forward_ios,size: 18,)),
            ],
          ).pSymmetric(h: 4.5.w),

          1.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Container(

                child: Row(
                  children: [
                    Image.asset('lib/assets/asset/Icon_Order.png',height: 40,),
                    4.w.widthBox,

                    Text('Order History',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400
                        ,fontSize: 15),),


                  ],
                ),
              ),

              IconButton(onPressed: (){},
                  icon: Icon(Icons.arrow_forward_ios,size: 18,)),
            ],
          ).pSymmetric(h: 4.5.w),

          1.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Container(

                child: Row(
                  children: [
                    Image.asset('lib/assets/asset/Icon_History.png',height: 40,),
                    4.w.widthBox,

                    Text('Order History',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400
                        ,fontSize: 15),),


                  ],
                ),
              ),

              IconButton(onPressed: (){},
                  icon: Icon(Icons.arrow_forward_ios,size: 18,)),
            ],
          ).pSymmetric(h: 4.5.w),

          1.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Container(

                child: Row(
                  children: [
                    Image.asset('lib/assets/asset/Icon_Order.png',height: 40,),
                    4.w.widthBox,

                    Text('Track Order',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400
                        ,fontSize: 15),),


                  ],
                ),
              ),

              IconButton(onPressed: (){
                Get.to(()=>TrackOrder());
              },
                  icon: Icon(Icons.arrow_forward_ios,size: 18,)),
            ],
          ).pSymmetric(h: 4.5.w),

          1.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Container(

                child: Row(
                  children: [
                    Image.asset('lib/assets/asset/Icon_Payment.png',height: 40,),
                    4.w.widthBox,

                    Text('Cards',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400
                        ,fontSize: 15),),


                  ],
                ),
              ),

              IconButton(onPressed: (){},
                  icon: Icon(Icons.arrow_forward_ios,size: 18,)),
            ],
          ).pSymmetric(h: 4.5.w),

          1.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Container(

                child: Row(
                  children: [
                    Image.asset('lib/assets/asset/Icon_Alert.png',height: 40,),
                    4.w.widthBox,

                    Text('Notifications',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400
                        ,fontSize: 15),),


                  ],
                ),
              ),

              IconButton(onPressed: (){

                Get.to(()=>SettingPage());
              },
                  icon: Icon(Icons.arrow_forward_ios,size: 18,)),
            ],
          ).pSymmetric(h: 4.5.w),

          1.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Container(

                child: Row(
                  children: [
                    Image.asset('lib/assets/asset/Icon_Exit.png',height: 40,),
                    4.w.widthBox,

                    Text('Log Out',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400
                        ,fontSize: 15),),


                  ],
                ),
              ),

              IconButton(onPressed: (){
                Get.to(()=>LoginScreen());
              },
                  icon: Icon(Icons.arrow_forward_ios,size: 18,)),
            ],
          ).pSymmetric(h: 4.5.w),
        ],
      ),
    );
  }
}
