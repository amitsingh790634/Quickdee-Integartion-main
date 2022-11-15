import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:sugandh/models/all_rating_model.dart';
import 'package:velocity_x/velocity_x.dart';

// import '../../widgets/models/all_rating_model.dart';
import 'controllers/all_rating_controller.dart';

class AllRatingPage extends GetView<AllRatingModel>
    with WidgetsBindingObserver {
  AllRatingController allRatingController = Get.put(AllRatingController());
  // var value1 = AllRatingController().rating;

  @override
  Widget build(BuildContext context) {
    return allRatingController.obx((allrating) => ListView.builder(
          // physics: NeverScrollableScrollPhysics(),

          itemBuilder: (BuildContext, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    1.h.heightBox,

                    SizedBox(
                      height: 12.h,
                      width: 100.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 22,
                            child: CircleAvatar(
                              backgroundColor: Colors.greenAccent[100],
                              radius: 21,
                              child: const CircleAvatar(
                                backgroundImage: AssetImage(
                                    'lib/assets/asset/avatar.png'), //NetworkImage
                                radius: 19,
                              ), //CircleAvatar
                            ), //CircleAvatar
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                allrating!.reviews[index].name,
                                style: const TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                allrating.reviews[index].comment,
                                style: const TextStyle(
                                  fontSize: 11,
                                  color: Colors.black,
                                ),
                              ),
                              7.h.heightBox,
                            ],
                          ),
                          4.w.widthBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // for(var i;i>=allrating.reviews[index].rating.toInt();i++){

                              // };
                              //                            buildRatingStar(int index) {
                              // if (index < currentRating) {
                              //   return Icon(
                              //     Icons.star,
                              //     color: Colors.yellow,
                              //   );
                              // RatingBar.builder(
                              //   initialRating: 0,
                              //   minRating: 1,
                              //   itemSize: 20,
                              //   direction: Axis.horizontal,
                              //   allowHalfRating: false,
                              //   itemCount: allrating.reviews[index].rating,
                              //   itemPadding:
                              //       const EdgeInsets.symmetric(horizontal: 2.0),
                              //   itemBuilder: (context, _) => const Icon(
                              //     Icons.star,
                              //     color: Colors.amber,
                              //   ),
                              //   onRatingUpdate: (rating) {
                              //     // rateProductController.rating = rating.toInt();
                              //     // print(rating);
                              //   },
                              // ),
                              VxRating(
                                onRatingUpdate: (_) {
                                  // value = allrating.reviews[index].rating
                                  //     .toString();
                                },
                                // value:
                                //     allrating.reviews[index].rating.toDouble(),
                                count: allrating.reviews[index].rating,
                                selectionColor: Colors.yellow,
                                isSelectable: false,
                                // maxRating: 5,
                                // normalColor: Colors.grey,

                                // normalColor: Colors.grey,
                                size: 20,
                                // value:
                                //     allrating.reviews[index].rating.toDouble(),
                              ),
                            ],
                          ),
                        ],
                      ).pSymmetric(h: 5.w),
                    )

                    //Image.asset('lib/assets/asset/sale1.png',fit: BoxFit.fill,)),
                    //AssetImage(images[index]),
                    //Text("This is title",style: TextStyle(fontSize: 10,),),
                  ],
                ),
              ],
            );
          },
          itemCount: allrating!.reviews.length,
          shrinkWrap: true,
          //padding: EdgeInsets.all(5),
          //scrollDirection: Axis.horizontal,
        ));
  }
}
