import 'package:get/get.dart';
import 'package:sugandh/services/api_client.dart';

import '../../../models/category_model.dart';
import '../../../provider/api_client.dart';
import '../../../provider/category_provider.dart';

class ViewCategoryController extends GetxController
    with StateMixin<CategoryModel> {
  String id = Get.arguments;
  // late Rx<ViewStoryModel> storyImg;
  // late Rx<ViewStoryModel> title;
  // late Rx<ViewStoryModel> description;
  RxBool isPause = false.obs;
  // late Rx<CategoryModel> filteredProductsCount;
  //List<ViewStoryModel> story = [];
  // Rx<CategoryModel> filteredProductsCount;

  callViewCategoryApi() {
    Client client = Client();
    CategoryProvider viewCategoryProvider =
        CategoryProvider(client: client.init());
    try {
      // detailProductProvider.getProductDetails(id: id)
      viewCategoryProvider.getCategory(id: id).then((value) {
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
    callViewCategoryApi();
    // callDetailProductApi();
    super.onInit();
  }
}
