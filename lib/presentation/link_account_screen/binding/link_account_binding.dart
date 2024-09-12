import '../controller/link_account_controller.dart';
import 'package:get/get.dart';

class LinkAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LinkAccountController());
  }
}
