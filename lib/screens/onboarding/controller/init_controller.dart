import 'dart:async';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class InitialController extends GetxController {
  final box = GetStorage();
  RxBool isNewUser = true.obs;

  navigate() {
    Timer(const Duration(seconds: 3), () {
      Get.toNamed("/onboard_one");
    });
  }

  checkIfNewUser() {
    log('------Checking if is new user--------');
    log(box.read('isNewUser').toString());
    var newUser = box.read('isNewUser');
    if (newUser == null) {
      isNewUser.value = true;
    } else {
      isNewUser.value = false;
    }
  }

  routeIfNotNewUser() {
    if (isNewUser.value == true) {
      Get.toNamed('/add_code');
    } else {
      //to homescreen
    }
  }

  @override
  void onReady() {
    navigate();
    checkIfNewUser();
    super.onReady();
  }
}
