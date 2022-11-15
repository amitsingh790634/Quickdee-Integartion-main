import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sugandh/views/products/controllers/products_controller.dart';

import '../../../provider/api_client.dart';
import '../../../provider/rate_product_provider.dart';
import '../../../services/api_client.dart';

class RateProductController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController comment = TextEditingController();
  var rating;
  DetailProductController detailProductController = Get.find();
  // var productId = detailProductController.id;

  RateProduct() async {
    Client client = Client();
    final prefs = await SharedPreferences.getInstance();
    final key = 'user';
    var user = prefs.getString(key);
    final key2 = 'name';
    var name = prefs.getString(key2);

    RateProductProvider(client: client.init()).putRateProduct(
        user.toString(),
        name.toString(),
        rating.toString(),
        comment.text,
        detailProductController.id.toString());
  }
}
