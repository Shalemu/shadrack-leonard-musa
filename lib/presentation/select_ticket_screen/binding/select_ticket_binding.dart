import '../controller/select_ticket_controller.dart';
import 'package:get/get.dart';

class SelectTicketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectTicketController());
  }
}
