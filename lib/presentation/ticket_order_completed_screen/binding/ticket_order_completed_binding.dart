import '../controller/ticket_order_completed_controller.dart';
import 'package:get/get.dart';

class TicketOrderCompletedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketOrderCompletedController());
  }
}
