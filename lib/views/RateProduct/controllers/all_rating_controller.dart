import 'package:get/get.dart';
import 'package:sugandh/models/all_rating_model.dart';
import 'package:sugandh/provider/all_rating_provider.dart';
import 'package:sugandh/services/api_client.dart';

import '../../../provider/api_client.dart';
import '../../products/controllers/products_controller.dart';

class AllRatingController extends GetxController
    with StateMixin<AllRatingModel> {
  DetailProductController detailProductController = Get.find();
  // late Rx<AllRatingModel> rating;
  // String id = Get.arguments;
  // late Rx<ViewStoryModel> storyImg;
  // late Rx<ViewStoryModel> title;
  // late Rx<ViewStoryModel> description;
  RxBool isPause = false.obs;
  // late Rx<SearchModel> filteredProductsCount;
  //List<ViewStoryModel> story = [];
  //late Rx<ViewStoryModel> storyAudio;

  callAllRatingApi() {
    Client client = Client();
    AllRatingProvider allRatingProvider =
        AllRatingProvider(client: client.init());
    try {
      // detailProductProvider.getProductDetails(id: id)
      allRatingProvider
          .getRatingDetails(id: detailProductController.id.toString())
          .then((value) {
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
    callAllRatingApi();
    super.onInit();
  }
}
