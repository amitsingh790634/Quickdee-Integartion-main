import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../provider/add_cart_provider.dart';
import '../../../provider/api_client.dart';

class AddCartController extends GetxController {
  // late String id;

  RxBool isValue = false.obs;

  addCartApi(id) {
    print(id);
    Client client = Client();
    AddProductCartProvider addCartController =
        AddProductCartProvider(client: client.init());
    try {
      addCartController.addCartlist(id: id).then((value) {
        // AllProductsController().isValue = false.obs;
        // print(AllProductsController().isValue.value);
        Get.snackbar('Success', 'Product added to wishlist Successfully');
        // change(value, status: RxStatus.success());
      }, onError: (err) {
        // change(null, status: RxStatus.error(err.toString()));
      });
    } catch (e) {
      // change(null, status: RxStatus.error(e.toString()));
    }
  }
}
