import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:sugandh/views/search_screen/controllers/search_screen_controller.dart';

import '../models/search_model.dart';

class SearchProvider {
  Dio client;
  SearchProvider({required this.client});

  Future<SearchModel> getSearch({required String value}) async {
    SearchController().isLoading.value = true;
    try {
      Response response = await client.get(
        "/api/v1/products?keyword=$value",
      );

      if (response.statusCode == 200) {
        SearchController().isLoading.value = false;
        print(response.data);
        return searchModelFromJson(jsonEncode(response.data));
      } else {
        return Future.error(response.data["error"]);
      }
    } on DioError catch (e) {
      // print(e.response!.data);
      return Future.error(e.message);
    }
  }
}
