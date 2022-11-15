// import 'package:get/get.dart';
// import 'package:sugandh/views/allproducts/controllers/allproducts_controller.dart';
// import 'package:sugandh/views/mywishlist/controllers/add_wishlist_controller.dart';

// import '../../../provider/api_client.dart';
// import '../../../provider/remove_wishlist_provider.dart';
// import '../../../services/api_client.dart';

// class RemoveWishlistController extends GetxController {
//   late String id;
//   // late Rx<ViewStoryModel> title;
//   // late Rx<ViewStoryModel> description;
//   // RxBool isPause = false.obs;
//   // late Rx<SearchModel> filteredProductsCount;
//   //List<ViewStoryModel> story = [];
//   //late Rx<ViewStoryModel> storyAudio;

//   callRemoveWishlistApi(id) {
//     Client client = Client();
//     RemoveWishlistProvider removeWishlistProvider =
//         RemoveWishlistProvider(client: client.init());
//     try {
//       removeWishlistProvider.removeWishlist(id: id).then((value) {
//         AllProductsController().isValue = true.obs;
//         print(AllProductsController().isValue.value);
//         print('removed');
//         // Get.snackbar('Success', 'Product added to wishlist Successfully');
//         // change(value, status: RxStatus.success());
//       }, onError: (err) {
//         // change(null, status: RxStatus.error(err.toString()));
//       });
//     } catch (e) {
//       // change(null, status: RxStatus.error(e.toString()));
//     }
//   }

//   @override
//   void onInit() {
//     // callDetailProductApi();
//     super.onInit();
//   }
// }

import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import '../../../provider/api_client.dart';
import '../../../provider/remove_wishlist_provider.dart';

class RemoveWishlistController extends GetxController {
  late String id;
  RxBool isPause = false.obs;

  RemoveWishlistApi(String id) {
    Client client = Client();
    RemoveWishlistProvider removeWishlistProvider =
        RemoveWishlistProvider(client: client.init());
    try {
      removeWishlistProvider.Removewishlist(id: id).then((value) {
        print('hello');
        Get.snackbar('Success', 'Product remove to wishlist Successfully');
        // change(value, status: RxStatus.success());
      }, onError: (err) {
        // change(null, status: RxStatus.error(err.toString()));
      });
    } catch (e) {
      // change(null, status: RxStatus.error(e.toString()));
    }
  }

  @override
  void onInit() {
    // RemoveWishlistApi((id: id));
    super.onInit();
  }
}
