import '../controller/choose_location_controller.dart';
import 'package:get/get.dart';

class ChooseLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChooseLocationController());
  }
}
