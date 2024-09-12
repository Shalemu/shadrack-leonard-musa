import '../controller/detail_organizer_controller.dart';
import 'package:get/get.dart';

class DetailOrganizerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailOrganizerController());
  }
}
