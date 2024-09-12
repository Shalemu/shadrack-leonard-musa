import '../controller/ticket_select_payment_controller.dart';
import 'package:get/get.dart';

class TicketSelectPaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketSelectPaymentController());
  }
}
