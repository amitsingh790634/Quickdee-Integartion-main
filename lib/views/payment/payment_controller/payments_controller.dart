// ignore_for_file: file_names

import 'package:get/get.dart';

enum PaymentMethod {paytm, mobikwik, awazon, upi, netBanking, cards}

class CheckOutController extends GetxController{
  Rx<PaymentMethod> selecthosOption = PaymentMethod.paytm.obs;
  onchaged(value){
    selecthosOption(value);
  }

}