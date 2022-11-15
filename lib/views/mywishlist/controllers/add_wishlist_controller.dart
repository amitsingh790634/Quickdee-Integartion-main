// import 'package:get/get.dart';

// import '../../../provider/add_wishlist_provider.dart';
// import '../../../provider/api_client.dart';
// import '../../../services/api_client.dart';
// import '../../allproducts/controllers/allproducts_controller.dart';

// class AddWishlistController extends GetxController {
//   late String id;
//   // late Rx<ViewStoryModel> title;
//   // late Rx<ViewStoryModel> description;
//   RxBool isPause = false.obs;
//   // late Rx<SearchModel> filteredProductsCount;
//   //List<ViewStoryModel> story = [];
//   //late Rx<ViewStoryModel> storyAudio;

//   callAddWishlistApi(id) {
//     Client client = Client();
//     AddWishlistProvider addWishlistProvider =
//         AddWishlistProvider(client: client.init());
//     try {
//       addWishlistProvider.addWishlist(id: id).then((value) {
//         AllProductsController().isValue = false.obs;
//         print(AllProductsController().isValue.value);
//         Get.snackbar('Success', 'Product added to wishlist Successfully');
//         // change(value, status: RxStatus.success());
//       }, onError: (err) {
//         // change(null, status: RxStatus.error(err.toString()));
//       });
//     } catch (e) {
//       // change(null, status: RxStatus.error(e.toString()));
//     }
//   }

//   // callRemoveWishlistApi(id) {
//   //   Client client = Client();
//   //   RemoveWishlistProvider removeWishlistProvider =
//   //       RemoveWishlistProvider(client: client.init());
//   //   try {
//   //     removeWishlistProvider.removeWishlist(id: id).then((value) {
//   //       isPause = true.obs;
//   //       Get.snackbar('Success', 'Product removed from wishlist Successfully');
//   //       print('removed');
//   //       // Get.snackbar('Success', 'Product added to wishlist Successfully');
//   //       // change(value, status: RxStatus.success());
//   //     }, onError: (err) {
//   //       // change(null, status: RxStatus.error(err.toString()));
//   //     });
//   //   } catch (e) {
//   //     // change(null, status: RxStatus.error(e.toString()));
//   //   }
//   // }

//   @override
//   void onInit() {
//     // callDetailProductApi();
//     super.onInit();
//   }
// }

import 'package:get/get.dart';
import 'package:sugandh/provider/api_client.dart';

import '../../../provider/add_wishlist_provider.dart';

class AddWishlistController extends GetxController {
  late String id;
  // late Rx<ViewStoryModel> title;
  // late Rx<ViewStoryModel> description;
  RxBool isPause = false.obs;
  // late Rx<SearchModel> filteredProductsCount;
  //List<ViewStoryModel> story = [];
  //late Rx<ViewStoryModel> storyAudio;

  callAddWishlistApi(id) {
    Client client = Client();
    AddWishlistProvider addWishlistProvider =
        AddWishlistProvider(client: client.init());
    try {
      addWishlistProvider.addWishlist(id: id).then((value) {
        Get.snackbar('Success', 'Product added to wishlist Successfully');
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
    // callDetailProductApi();
    super.onInit();
  }
}
