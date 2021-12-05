import 'package:get/get.dart';
import 'package:rincon/screens/onboarding/controller/init_controller.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(InitialController());
  }
}
