import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart' as g;

import '../../views/check_out_screens/checkout_summary.dart';
import '../../views/home_screen/home_page.dart';
import '../models/checkout_address_model.dart';

class CheckoutAddressProvider {
  Dio client;
  CheckoutAddressProvider({required this.client});

  Future<CheckoutAddressModel> checkoutAddressAPI(
      {required String street1,
      required String street2,
      required String city,
      required String state2,
      required String country}) async {
    Map body = {
      "street1": street1,
      "street2": street2,
      "city": city,
      "state": state2,
      "country": country,
    };
    try {
      print('checkout success');

      Response response =
          await client.post('/api/v1/order/checkout', data: body);

      if (response.statusCode == 200) {
        print('hellooooooo');
        print(response.data);
        return checkoutAddressModelFromJson(jsonEncode(response.data));

        //print(response.data);

      } else {
        return Future.error(response.data["error"]);
      }
    } on DioError catch (e) {
      // print(e.response!.data);
      return Future.error(e.message);
    }
  }
}
