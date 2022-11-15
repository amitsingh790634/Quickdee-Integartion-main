import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sugandh/models/all_category_model.dart';

// import '../../../Model/all_category_model.dart';
import '../../../provider/all_category_provider.dart';
import '../../../provider/api_client.dart';
import '../../../services/api_client.dart';

class CategoryController extends GetxController
    with StateMixin<AllCategoryModel> {
  RxBool isLoading = false.obs;

  RxBool isPause = false.obs;
  ScrollController scrollController = ScrollController();

  callAllCategoryApi() {
    Client client = Client();
    AllCategoryProvider allCategoryProvider =
        AllCategoryProvider(client: client.init());
    // SearchProvider searchProvider = SearchProvider(client: client.init());
    try {
      // detailProductProvider.getProductDetails(id: id)
      allCategoryProvider.getAllCategory().then((value) {
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
    callAllCategoryApi();
    // callSearchApi();
    super.onInit();
  }
}
