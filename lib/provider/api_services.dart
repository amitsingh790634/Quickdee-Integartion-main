import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:sugandh/models/all_products_model.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
import 'package:sugandh/views/buttom_nav_bar/dash_bord.dart';

import '../models/sign_request_model.dart';

class AllProductsProvider {
  // late Dio client;

  // Future<AllProductsModel> allProducts() async {
  //   var res = await http
  //       .get(Uri.parse('https://ecom-flyweis.herokuapp.com/api/v1/products'));

  //   if (res.statusCode == 200) {
  //     return allProductsModelFromJson(jsonEncode(res.body['products']));
  //   }
  // }
  Dio client;
  // late AllProductsProvider();
  AllProductsProvider({required this.client});

  Future<AllProductsModel> getAllProducts() async {
    try {
      Response response = await client.get("/api/v1/products");

      if (response.statusCode == 200) {
        // print(response.data['products'][1]['images'][0]['url']);
        // print(response.data['products'][5]);
        return allProductsModelFromJson(jsonEncode(response.data));
        // return allProFromJson(jsonEncode(response.data["singleView"]));

      } else {
        return Future.error(response.data["error"]);
      }
    } on DioError catch (e) {
      // print(e.response!.data);
      return Future.error(e.message);
    }
  }
}
