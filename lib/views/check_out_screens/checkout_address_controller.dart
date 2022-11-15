import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../../models/checkout_address_model.dart';
import '../../provider/api_client.dart';
import '../../provider/checkout_address_provider.dart';
import 'check_out_payment.dart';

class CheckoutAddressController extends GetxController
    with StateMixin<CheckoutAddressModel> {
  late Razorpay _razorpay;
  GlobalKey<FormState> Checkaddressform = GlobalKey();

  TextEditingController Street1 = TextEditingController();
  TextEditingController street2 = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController state2 = TextEditingController();
  TextEditingController Country = TextEditingController();
  // RxBool isPause = false.obs;

  callcheckoutController() {
    Client client = Client();

    CheckoutAddressProvider(client: client.init()).checkoutAddressAPI(
      city: city.toString(),
      country: Country.text,
      state2: state2.text,
      street1: Street1.text,
      street2: street2.text,
    );
  }
  //................................

  @override
  void onInit() {
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
    callcheckoutController();
    super.onInit();
  }

  String? validatestreet1(value) {
    if (value == '') {
      return ' please enter street';
    }
    return null;
  }

  CheckStreet1() {
    var isValidate = Checkaddressform.currentState!.validate();
    if (!isValidate) {
      return;
    } else {
      //Get.to(()=> HomePage());
    }
    Checkaddressform.currentState!.save();
  }

  String? validatestreet2(value) {
    if (value == '') {
      return ' please enter valid Street2';
    }
    return null;
  }

  Checkstreet2() {
    var isValidate = Checkaddressform.currentState!.validate();
    if (!isValidate) {
      return;
    } else {
      //Get.to(()=> HomePage());
    }
    Checkaddressform.currentState!.save();
  }

  String? validatecity(value) {
    if (value == '') {
      return ' please enter your city';
    }
    return null;
  }

  Checkcity() {
    var isValidate = Checkaddressform.currentState!.validate();
    if (!isValidate) {
      return;
    } else {}
    Checkaddressform.currentState!.save();
  }

  String? validatestate(value) {
    if (value == '') {
      return ' please enter your state';
    }
    return null;
  }

  Checkstate() {
    var isValidate = Checkaddressform.currentState!.validate();
    if (!isValidate) {
      return;
    } else {}
    Checkaddressform.currentState!.save();
  }

  String? validateCountry(value) {
    if (value == '') {
      return ' please enter valid mobile Country';
    }
    return null;
  }

  CheckoutAddress() {
    var isValidate = Checkaddressform.currentState!.validate();
    if (!isValidate) {
      return;
    } else {
      //if you will take dispose method then you have to use in place of to is off
      // Get.off(() => CheckoutSummary());
      //callAdduserApi();
    }
    // Checkaddressform.currentState!.save();
  }
// void callAdduserApi() async {
//   http.Response r = await ApiProvider.addUser(name.text,email.text,age.text,mobile.text);
//   if(r.statusCode==200){
//     Get.to(()=> HomePage());
//   }
// }

  //here dispose method.............

  // @override
  // void dispose() {
  //   Checkaddressform.currentState!.dispose();
  //   super.dispose();
  // }
  void openCheckout() async {
    var options = {
      'key': 'rzp_test_RCA60YesrxgJwm',
      'amount': 100,
      'name': 'Acme Corp.',
      'order id'

          // 'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'},
          'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('Error: e');
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    print('Success Response: $response');
    /*Fluttertoast.showToast(
        msg: "SUCCESS: " + response.paymentId!,
        toastLength: Toast.LENGTH_SHORT); */
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    print('Error Response: $response');
    /* Fluttertoast.showToast(
        msg: "ERROR: " + response.code.toString() + " - " + response.message!,
        toastLength: Toast.LENGTH_SHORT); */
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    print('External SDK Response: $response');
    /* Fluttertoast.showToast(
        msg: "EXTERNAL_WALLET: " + response.walletName!,
        toastLength: Toast.LENGTH_SHORT); */
  }
}
