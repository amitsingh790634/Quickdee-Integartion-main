import 'package:get/get.dart';

import '../controllers/rate_product_controller.dart';

class RateProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RateProductController>(
      () => RateProductController(),
    );
  }
}
