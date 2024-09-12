import '../controller/detail_ticket_controller.dart';
import 'package:get/get.dart';

class DetailTicketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailTicketController());
  }
}
