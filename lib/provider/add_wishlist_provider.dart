// import 'package:dio/dio.dart';
// import 'package:get/get.dart' as g;
// import 'package:sugandh/views/allproducts/controllers/allproducts_controller.dart';

// class AddWishlistProvider {
//   Dio client;
//   AddWishlistProvider({required this.client});

//   addWishlist({required String id}) async {
//     Map body = {"product": id};
//     try {
//       Response response = await client.post("/api/v1/add/wishlist", data: body);

//       if (response.statusCode == 200) {
//         AllProductsController().isValue = false.obs;
//         print(response.data);
//         //print(response.data);

//       } else {
//         return Future.error(response.data["error"]);
//       }
//     } on DioError catch (e) {
//       // print(e.response!.data);
//       return Future.error(e.message);
//     }
//   }
// }

import 'package:dio/dio.dart';

class AddWishlistProvider {
  Dio client;
  AddWishlistProvider({required this.client});

  addWishlist({required String id}) async {
    Map body = {"product": id};
    try {
      Response response = await client.post("/api/v1/add/wishlist", data: body);

      if (response.statusCode == 200) {
        print(response.data);
        //print(response.data);

      } else {
        return Future.error(response.data["error"]);
      }
    } on DioError catch (e) {
      // print(e.response!.data);
      return Future.error(e.message);
    }
  }
}
