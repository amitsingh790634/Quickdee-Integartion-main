import 'package:get/get.dart';

import '../controllers/allproducts_controller.dart';

class AllProductsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AllProductsController>(
      () => AllProductsController(),
    );
  }
}
