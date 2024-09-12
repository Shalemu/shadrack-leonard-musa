import '../controller/home_vtwo_container_controller.dart';
import 'package:get/get.dart';

class HomeVtwoContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeVtwoContainerController());
  }
}
