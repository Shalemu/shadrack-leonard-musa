import '../controller/search_by_map_controller.dart';
import 'package:get/get.dart';

class SearchByMapBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchByMapController());
  }
}
