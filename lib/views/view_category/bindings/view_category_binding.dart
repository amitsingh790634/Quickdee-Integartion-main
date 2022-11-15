import 'package:get/get.dart';

import '../controllers/view_category_controller.dart';

class ViewCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ViewCategoryController>(
      () => ViewCategoryController(),
    );
  }
}
