import '../controller/onboarding_001_controller.dart';
import 'package:get/get.dart';

class Onboarding001Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Onboarding001Controller());
  }
}
