import 'dart:convert';

import 'package:dio/dio.dart';

import '../models/trand_category_model.dart';

class TrandCategoryProvider {
  Dio Client;
  TrandCategoryProvider({required this.Client});

  Future getTrandCategory() async {
    try {
      print('try');
      Response response = await Client.get('api/v1/category/trending');
      if (response.statusCode == 200) {
        print('if');
        print(response.data);
        return trandCategoryModelFromJson(jsonEncode(response.data));
      } else {
        Future.error(response.data['message']);
      }
    } on DioError catch (e) {
      print(e.response!.data);
      return Future.error(e.message);
    }
  }
}
