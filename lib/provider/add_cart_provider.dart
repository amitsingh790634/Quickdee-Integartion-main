import 'package:dio/dio.dart';
import 'package:get/get.dart' as g;
import 'package:shared_preferences/shared_preferences.dart';

class AddProductCartProvider {
  Dio client;
  AddProductCartProvider({required this.client});

  addCartlist({required String id}) async {
    final preference = await SharedPreferences.getInstance();
    final key = 'token';

    var token = preference.getString(key);
    print(token);
    Map body = {"product": id};
    print(body);
    try {
      print("cat");
      Response response = await client.post("api/v1/cart", data: body);
      print("abcdf");

      if (response.statusCode == 200) {
        print("if");
        // AllProductsController().isValue = false.obs;
        print(response.data);
        //print(response.data);

      } else {
        return Future.error(response.data["error"]);
      }
    } on DioError catch (e) {
      print("end");
      // print(e.response!.data);
      return Future.error(e.message);
    }
  }
}
