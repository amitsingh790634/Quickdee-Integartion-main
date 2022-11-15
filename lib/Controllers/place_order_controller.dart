import 'package:get/state_manager.dart';

import '../models/place_order_model.dart';
import '../provider/api_client.dart';
import '../provider/place_order_Provider.dart';

class PlaceOrderController extends GetxController
    with StateMixin<PlaceOrderModel> {
  RxBool isPause = false.obs;

  callPlaceOrdercontroller() {
    Client client = Client();
    PlaceOrderProvider placeOrderProvider = PlaceOrderProvider(
      client: client.init(),
    );
    // SearchProvider searchProvider = SearchProvider(client: client.init());
    try {
      // detailProductProvider.getProductDetails(id: id)
      placeOrderProvider.PlaceOrderApi().then((value) {
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
    callPlaceOrdercontroller();
    // callSearchApi();
    super.onInit();
  }
}
