import '../controller/login_empty_state_controller.dart';
import 'package:get/get.dart';

class LoginEmptyStateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginEmptyStateController());
  }
}
