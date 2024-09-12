import '../controller/enter_new_password_controller.dart';
import 'package:get/get.dart';

class EnterNewPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EnterNewPasswordController());
  }
}
