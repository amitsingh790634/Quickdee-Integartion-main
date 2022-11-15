import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../provider/api_client.dart';
import '../../../provider/edit_profile_provider.dart';

class EditProfileController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController namecont = TextEditingController();
  TextEditingController emailcont = TextEditingController();
  TextEditingController phonecont = TextEditingController();

  callEditProfile() async {
    Client client = Client();

    EditProfileProvider(client: client.init())
        .editProfile(namecont.text, emailcont.text, phonecont.text);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    EditProfileController().dispose();
    super.onClose();
  }
}
