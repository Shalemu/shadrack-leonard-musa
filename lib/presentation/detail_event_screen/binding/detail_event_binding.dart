import '../controller/detail_event_controller.dart';
import 'package:get/get.dart';

class DetailEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailEventController());
  }
}
