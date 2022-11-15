import 'dart:convert';

import 'package:dio/dio.dart';

import '../models/demand_product_model.dart';

class DemandProduct {
  Dio client;
  DemandProduct({required this.client});

  Future<DemandProductModel> getDemandProduct() async {
    try {
      Response response = await client.get('api/v1/products/in-demand');
      if (response.statusCode == 200) {
        print(response.data);
        return demandProductModelFromJson(jsonEncode(response.data));
      } else {
        return Future.error(response.data["message"]);
      }
    } on DioError catch (e) {
      print(e.response!.data);
      return Future.error(e.message);
    }
  }
}
