import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class App_bar extends StatelessWidget implements PreferredSizeWidget {
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(100.w, 12.h);

  App_bar(
      {Key? key, required this.start, required this.middle, required this.end})
      : super(key: key);
  Widget start;
  Widget middle;
  Widget end;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          1.h.heightBox,
          Container(
            height: 9.h,
            width: 100.w,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Row(
              children: [start, Spacer(), middle, Spacer(), end],
            ).px(3.w),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Popular:'),
              Container(
                height: 25,
                width: 92,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36),
                  color: Color(0xFFFFFFFF),
                  border: Border.all(color: Colors.black),
                ),
                child: Center(
                  child: Text(
                    "Clothing",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                height: 25,
                width: 92,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36),
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                ),
                child: Center(
                  child: Text(
                    "Glasses",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                height: 25,
                width: 92,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36),
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                ),
                child: Center(
                  child: Text(
                    "Swimsuits",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ).px(3.w),
        ],
      ),
    );
  }
}
