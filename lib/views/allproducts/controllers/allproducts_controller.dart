import 'package:get/get.dart';
import 'package:sugandh/models/all_products_model.dart';

// import '../../../Model/all_products_model.dart';
import '../../../provider/api_client.dart';
import '../../../provider/api_services.dart';
import '../../../services/api_client.dart';

class AllProductsController extends GetxController
    with StateMixin<AllProductsModel> {
  RxBool isLoading = false.obs;
  RxBool isValue = false.obs;
  // late Rx<AllProductsModel> id;

  AllProducts() async {
    Client client = Client();
    AllProductsProvider allProductsProvider =
        AllProductsProvider(client: client.init());
    try {
      allProductsProvider.getAllProducts().then((value) {
        change(value, status: RxStatus.success());
      }, onError: (err) {
        change(null, status: RxStatus.error(err.toString()));
      });
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
    // Client client = Client();
    // APIServices allProducts = APIServices(client: client.init());
    // Client client = Client();
  }

  @override
  void onInit() {
    AllProducts();
    super.onInit();
  }
}
