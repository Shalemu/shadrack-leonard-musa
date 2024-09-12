import '../controller/ticket_detail_order_controller.dart';
import 'package:get/get.dart';

class TicketDetailOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketDetailOrderController());
  }
}
