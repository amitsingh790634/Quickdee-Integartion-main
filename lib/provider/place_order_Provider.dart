import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart' as g;

import '../../views/check_out_screens/checkout_summary.dart';

class PlaceOrderProvider {
  Dio client;
  PlaceOrderProvider({required this.client});

  Future PlaceOrderApi() async {
    try {
      Response response = await client.post('/api/v1/order/place-order');
      print('try');

      if (response.statusCode == 200) {
        print(jsonEncode(response.data));
        // print(jsonresponse[1]);

        String o_id = response.data['orderId'];
        double amo_unt = response.data['amount'];

        print(o_id);
        print(amo_unt);
        // return placeOrderModelFromJson(jsonEncode(response.data));
      } else {
        print('else');
        return Future.error(response.data["error"]);
      }
    } on DioError catch (e) {
      print(e.response!.data);
      print('catch');
      return Future.error(e.message);
    }
  }
}
