import 'dart:ui';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:sugandh/views/category/catagary_screen.dart';
import 'package:sugandh/views/check_out_screens/check_out_address.dart';
import 'package:sugandh/views/discover/discover_screens.dart';
import 'package:sugandh/views/mywishlist/controllers/my_wishlist_controller.dart';
import 'package:sugandh/views/order_acepted/order_accepted.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../views/allproducts/allproducts_view.dart';
import '../views/mywishlist/my_wishlist_view.dart';
import '../views/products/product_screen.dart';

class OpenDrawer extends StatefulWidget {
  const OpenDrawer({Key? key}) : super(key: key);

  @override
  _OpenDrawerState createState() => _OpenDrawerState();
}

class _OpenDrawerState extends State<OpenDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
          child: Column(
            children: [
              4.h.heightBox,

              Align(
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 42,
                  child: CircleAvatar(
                    backgroundColor: Colors.greenAccent[100],
                    radius: 41,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                          'lib/assets/asset/avatar.png'), //NetworkImage
                      radius: 39,
                    ), //CircleAvatar
                  ), //CircleAvatar
                ),
              ).px32(),
              1.h.heightBox,

              //Image.asset('lib/assets/asset/avatar.png'),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Jameson Donn',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
              ).px32(),
              1.h.heightBox,

              //Image.asset('lib/assets/asset/avatar.png'),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '@johndonee',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 11,
                  ),
                ),
              ).px32(),

              2.h.heightBox,

              Expanded(
                child: ListView(
                  padding: EdgeInsets.all(0.0),
                  children: [
                    Container(
                      child: ListTile(
                        leading: Image.asset(
                          'lib/assets/asset/home.png',
                          height: 17,
                          width: 55,
                        ),
                        //Icon(FontAwesomeIcons.calendarCheck,color: Colors.black,),
                        title: Text(
                          'Home',
                          style: TextStyle(color: Colors.black),
                        ),
                        //PersonalDetails
                      ),
                    ).onTap(() {
                      Get.to(() => OrderAcepted());

                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>BookAppointment()));
                    }),

                    Container(
                      child: ListTile(
                        leading: Image.asset(
                          'lib/assets/asset/Icon_Catalog.png',
                          height: 17,
                          width: 55,
                        ),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text(
                          'Catalog',
                          style: TextStyle(color: Colors.black),
                        ),
                        //PersonalDetails
                      ),
                    ).onTap(() {
                      Get.to(() => DiscoverPage());

                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderPage()));
                    }),

                    Container(
                      child: ListTile(
                        leading: Image.asset(
                          'lib/assets/asset/category.png',
                          height: 17,
                          width: 55,
                        ),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text(
                          'Categary',
                          style: TextStyle(color: Colors.black),
                        ),
                        //PersonalDetails
                      ),
                    ).onTap(() {
                      Get.to(() => CategoryPage());

                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>GoogleFit()));
                    }),
                    Container(
                      child: ListTile(
                        leading: Image.asset(
                          'lib/assets/asset/Icon_Collection.png',
                          height: 17,
                          width: 55,
                        ),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text(
                          'Collection',
                          style: TextStyle(color: Colors.black),
                        ),
                        //PersonalDetails
                      ),
                    ).onTap(() {
                      Get.to(() => CheckoutAddress());

                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>UserComments()));
                    }),
                    Container(
                      child: ListTile(
                        leading: Image.asset(
                          'lib/assets/asset/IconProduct.png',
                          height: 17,
                          width: 55,
                        ),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text(
                          'Product',
                          style: TextStyle(color: Colors.black),
                        ),
                        //PersonalDetails
                      ),
                    ).onTap(() {
                      Get.to(() => AllProducts());

                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>MyReports()));
                    }),
                    Container(
                      child: ListTile(
                        leading: Image.asset(
                          'lib/assets/asset/heart.png',
                          height: 17,
                          width: 55,
                        ),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text(
                          'Wishlist',
                          style: TextStyle(color: Colors.black),
                        ),
                        //PersonalDetails
                      ),
                    ).onTap(() {
                      // MyWishlistController().onInit();

                      Get.to(() => (MyWishlist()));

                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>MyReceipts()));
                    }), //ShrareDetails

                    Container(
                      child: ListTile(
                        leading: Icon(
                          Icons.account_box_outlined,
                          size: 20,
                        ),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text(
                          'Aboutus',
                          style: TextStyle(color: Colors.black),
                        ),
                        //PersonalDetails
                      ),
                    ).px16().onTap(() {
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>MyAppointment()));
                    }),

                    Container(
                      child: ListTile(
                        leading: Icon(
                          Icons.logout,
                          size: 20,
                        ),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text(
                          'Logout',
                          style: TextStyle(color: Colors.black),
                        ),
                        //PersonalDetails
                      ),
                    ).px16().onTap(() {
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>MyAppointment()));
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
