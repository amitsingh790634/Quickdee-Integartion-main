// import 'package:get/get.dart';

// // import '../../../Model/my_wishlist_model.dart';
// import '../../../models/my_wishlist_model.dart';
// // import '../../../provider/api_client.dart';
// import '../../../provider/api_client.dart';
// import '../../../provider/my_wishlist_provider.dart';
// // import '../../../services/api_client.dart';

// class MyWishlistController extends GetxController
//     with StateMixin<MyWishlistModel> {
//   RxBool isLoading = false.obs;
//   // ignore: non_constant_identifier_names
//   MyWishlist() {
//     Client client = Client();
//     MyWishlistProvider myWishlistProvider =
//         MyWishlistProvider(client: client.init());
//     try {
//       myWishlistProvider.getMyWishlist().then((value) {
//         change(value, status: RxStatus.success());
//       }, onError: (err) {
//         change(null, status: RxStatus.error(err.toString()));
//       });
//     } catch (e) {
//       change(null, status: RxStatus.error(e.toString()));
//     }
//     // Client client = Client();
//     // APIServices allProducts = APIServices(client: client.init());
//     // Client client = Client();
//   }

//   @override
//   void onInit() {
//     MyWishlist();
//     super.onInit();
//   }

//   void dispose() {
//     MyWishlist();
//     super.dispose();
//   }
// }

import 'package:get/get.dart';

import '../../../models/my_wishlist_model.dart';
import '../../../provider/api_client.dart';
import '../../../provider/my_wishlist_provider.dart';

class MyWishlistController extends GetxController
    with StateMixin<MyWishlistModel> {
  // RxBool isLoading = false.obs;
  // ignore: non_constant_identifier_names
  MyWishlist() {
    Client client = Client();
    MyWishlistProvider myWishlistProvider =
        MyWishlistProvider(client: client.init());
    try {
      print('hello tryC');

      myWishlistProvider.getMyWishlist().then((value) {
        change(value, status: RxStatus.success());
      }, onError: (err) {
        change(null, status: RxStatus.error(err.toString()));
      });
    } catch (e) {
      print('hello catchC');

      change(null, status: RxStatus.error(e.toString()));
    }
    // Client client = Client();
    // APIServices allProducts = APIServices(client: client.init());
    // Client client = Client();
  }

  @override
  void onInit() {
    MyWishlist();
    super.onInit();
  }

  // @override
  // void on() {
  //   MyWishlist();
  //   super.onInit();
  // }

  @override
  void dispose() {
    // MyWishlist().di;
    // timer.cancel();

    super.dispose();
  }
}
