import 'package:get/state_manager.dart';

import '../models/cart_product_model.dart';
import '../provider/api_client.dart';
import '../provider/get_cart_provider.dart';
import '../services/api_client.dart';

class CartController extends GetxController with StateMixin<CartProductModel> {
  getCartApi() {
    Client client = Client();
    GetCartProduct getCartProduct = GetCartProduct(client: client.init());
    // SearchProvider searchProvider = SearchProvider(client: client.init());
    try {
      // detailProductProvider.getProductDetails(id: id)
      getCartProduct.getCart().then((value) {
        change(value, status: RxStatus.success());
      }, onError: (err) {
        change(null, status: RxStatus.error(err.toString()));
      });
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
  }

  @override
  void onInit() {
    getCartApi();
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    getCartApi();
    // TODO: implement onClose
    super.onClose();
  }
}
