import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';

class RemoveWishlistProvider {
  late dio.Dio client;
  RemoveWishlistProvider({required this.client});

  Future Removewishlist({required String id}) async {
    //  RateProductController().isLoading.value = true;
    Map body = {
      "product": id,
    };
    print(body);
    print('onpressed hello1');
    try {
      dio.Response response =
          await client.put("/api/v1/remove/wishlist", data: body);
      if (response.statusCode == 200) {
        print(response.data);
        print('hello success');
        // Get.snackbar(
        //     'Success', 'Your product in your wishlist has been removed');
        // print(response.data);
        return null;
      } else {
        print('not succsess');
        return Future.error(response.data["error"]);
      }
    } on dio.DioError catch (e) {
      print('catch');
      // print(e.response!.data);
      return Future.error(e.message);
    }
  }
}
