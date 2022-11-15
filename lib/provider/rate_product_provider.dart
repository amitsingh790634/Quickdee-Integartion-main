import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';
import 'package:sugandh/views/products/controllers/products_controller.dart';
import 'package:sugandh/views/products/product_screen.dart';

import '../../views/RateProduct/controllers/rate_product_controller.dart';

class RateProductProvider {
  dio.Dio client;
  RateProductProvider({required this.client});

  Future putRateProduct(String user, String name, String rating, String comment,
      String productId) async {
    RateProductController().isLoading.value = true;
    Map body = {
      "user": user,
      "name": name,
      "rating": rating,
      "comment": comment,
      "productId": productId
    };

    try {
      dio.Response response = await client.put("/api/v1/review", data: body);

      if (response.statusCode == 200) {
        RateProductController().isLoading.value = false;
        // Get.snackbar('Success', 'Your review has been submitted');

        // Future.delayed(const Duration(seconds: 10), Get.back());
        // Get.to(ProductPage(),arguments: );
        Get.back();
        Get.back();
        Get.snackbar('Success', 'Your review has been submitted');

        print(response.data);
        return null;
      } else {
        return Future.error(response.data["error"]);
      }
    } on dio.DioError catch (e) {
      // print(e.response!.data);
      return Future.error(e.message);
    }
  }
}
