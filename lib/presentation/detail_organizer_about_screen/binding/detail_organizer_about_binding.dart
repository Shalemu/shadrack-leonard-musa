import '../controller/detail_organizer_about_controller.dart';
import 'package:get/get.dart';

class DetailOrganizerAboutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailOrganizerAboutController());
  }
}
