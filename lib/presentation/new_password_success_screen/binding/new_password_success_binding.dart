import '../controller/new_password_success_controller.dart';
import 'package:get/get.dart';

class NewPasswordSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NewPasswordSuccessController());
  }
}
