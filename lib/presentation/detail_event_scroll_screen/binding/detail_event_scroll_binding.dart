import '../controller/detail_event_scroll_controller.dart';
import 'package:get/get.dart';

class DetailEventScrollBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailEventScrollController());
  }
}
