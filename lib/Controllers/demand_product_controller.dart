import 'package:get/get.dart';

import '../models/demand_product_model.dart';
import '../provider/api_client.dart';
import '../provider/demand_product_providar.dart';

class DemandProductController extends GetxController
    with StateMixin<DemandProductModel> {
  DemandCategoryApi() {
    Client clint = Client();
    DemandProduct demandproductprovider = DemandProduct(client: clint.init());
    // SearchProvider searchProvider = SearchProvider(client: client.init());
    try {
      // detailProductProvider.getProductDetails(id: id)
      demandproductprovider.getDemandProduct().then((value) {
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
    DemandCategoryApi();
    // callSearchApi();
    super.onInit();
  }
}
