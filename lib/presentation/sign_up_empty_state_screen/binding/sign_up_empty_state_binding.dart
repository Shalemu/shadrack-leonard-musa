import '../controller/sign_up_empty_state_controller.dart';
import 'package:get/get.dart';

class SignUpEmptyStateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpEmptyStateController());
  }
}
