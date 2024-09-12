import '../controller/pick_interest_controller.dart';
import 'package:get/get.dart';

class PickInterestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PickInterestController());
  }
}
