import '../controller/push_notification_controller.dart';
import 'package:get/get.dart';

class PushNotificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PushNotificationController());
  }
}
