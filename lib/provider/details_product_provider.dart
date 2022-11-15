import 'dart:convert';

import 'package:dio/dio.dart';

import '../models/detail_product_model.dart';

class DetailProductProvider {
  Dio client;
  DetailProductProvider({required this.client});

  Future<DetailProductModel> getProductDetails({required String id}) async {
    try {
      Response response = await client.get(
        "/api/v1/product/$id",
      );

      if (response.statusCode == 200) {
        //print(response.data);
        return detailProductModelFromJson(jsonEncode(response.data));
      } else {
        return Future.error(response.data["error"]);
      }
    } on DioError catch (e) {
      // print(e.response!.data);
      return Future.error(e.message);
    }
  }
}
