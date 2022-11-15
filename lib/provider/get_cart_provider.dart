import 'dart:convert';

import 'package:dio/dio.dart';

import '../models/cart_product_model.dart';

class GetCartProduct {
  Dio client;
  GetCartProduct({required this.client});

  Future<CartProductModel> getCart() async {
    try {
      print('in tey');
      Response response = await client.get('/api/v1/cart');
      if (response.statusCode == 200) {
        print('sussess get cart');
        return cartProductModelFromJson(jsonEncode(response.data));
      } else {
        return Future.error(response.data["error"]);
      }
    } on DioError catch (e) {
      // print(e.response!.data);
      return Future.error(e.message);
    }
  }
}
