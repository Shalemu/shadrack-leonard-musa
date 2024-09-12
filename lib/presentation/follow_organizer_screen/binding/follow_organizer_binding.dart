import '../controller/follow_organizer_controller.dart';
import 'package:get/get.dart';

class FollowOrganizerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FollowOrganizerController());
  }
}
