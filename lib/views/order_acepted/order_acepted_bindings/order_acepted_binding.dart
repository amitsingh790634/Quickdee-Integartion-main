import 'package:get/get.dart';

import '../order_acepted_controllers/order_acepted_controller.dart';

class OrderAceptedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderAceptedController>(
      () => OrderAceptedController(),
    );
  }
}
