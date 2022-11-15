import 'dart:convert';

import 'package:dio/dio.dart';

import '../models/all_rating_model.dart';

class AllRatingProvider {
  Dio client;
  AllRatingProvider({required this.client});

  Future<AllRatingModel> getRatingDetails({required String id}) async {
    try {
      Response response = await client.get(
        "/api/v1/reviews?id=$id",
      );

      if (response.statusCode == 200) {
        print(response.data);
        return allRatingModelFromJson(jsonEncode(response.data));
      } else {
        return Future.error(response.data["error"]);
      }
    } on DioError catch (e) {
      // print(e.response!.data);
      return Future.error(e.message);
    }
  }
}
