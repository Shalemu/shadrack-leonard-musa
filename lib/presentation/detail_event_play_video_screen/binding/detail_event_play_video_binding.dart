import '../controller/detail_event_play_video_controller.dart';
import 'package:get/get.dart';

class DetailEventPlayVideoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailEventPlayVideoController());
  }
}
