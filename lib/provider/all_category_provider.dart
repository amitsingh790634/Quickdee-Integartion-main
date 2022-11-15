import 'dart:convert';

import 'package:dio/dio.dart';

import '../../views/category/controllers/category_controller.dart';
import '../models/all_category_model.dart';

class AllCategoryProvider {
  Dio client;
  AllCategoryProvider({required this.client});

  Future<AllCategoryModel> getAllCategory() async {
    CategoryController().isLoading.value = true;
    try {
      Response response = await client.get(
        "/api/v1/getAllCategory",
      );

      if (response.statusCode == 201) {
        CategoryController().isLoading.value = false;
        // print(response.data);
        return allCategoryModelFromJson(jsonEncode(response.data));
      } else {
        return Future.error(response.data["error"]);
      }
    } on DioError catch (e) {
      // print(e.response!.data);
      return Future.error(e.message);
    }
  }
}
