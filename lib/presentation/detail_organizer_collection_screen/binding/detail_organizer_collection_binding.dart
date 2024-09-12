import '../controller/detail_organizer_collection_controller.dart';
import 'package:get/get.dart';

class DetailOrganizerCollectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailOrganizerCollectionController());
  }
}
