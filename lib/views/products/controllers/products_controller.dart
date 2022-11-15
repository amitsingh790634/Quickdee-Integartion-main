import 'package:get/get.dart';
import 'package:sugandh/provider/details_product_provider.dart';

import '../../../models/detail_product_model.dart';
import '../../../models/search_model.dart';
import '../../../provider/api_client.dart';
import '../../../services/api_client.dart';

class DetailProductController extends GetxController
    with StateMixin<DetailProductModel> {
  String id = Get.arguments;
  // late Rx<ViewStoryModel> storyImg;
  // late Rx<ViewStoryModel> title;
  // late Rx<ViewStoryModel> description;
  RxBool isPause = false.obs;
  late Rx<SearchModel> filteredProductsCount;
  //List<ViewStoryModel> story = [];
  //late Rx<ViewStoryModel> storyAudio;

  callDetailProductApi() {
    Client client = Client();
    DetailProductProvider detailProductProvider =
        DetailProductProvider(client: client.init());
    try {
      // detailProductProvider.getProductDetails(id: id)
      detailProductProvider.getProductDetails(id: id).then((value) {
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
    callDetailProductApi();
    super.onInit();
  }
}
