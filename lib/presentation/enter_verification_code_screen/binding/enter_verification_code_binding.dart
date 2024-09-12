import '../controller/enter_verification_code_controller.dart';
import 'package:get/get.dart';

class EnterVerificationCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EnterVerificationCodeController());
  }
}
