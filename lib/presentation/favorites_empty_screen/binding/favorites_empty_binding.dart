import '../controller/favorites_empty_controller.dart';
import 'package:get/get.dart';

class FavoritesEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FavoritesEmptyController());
  }
}
