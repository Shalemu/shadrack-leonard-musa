import '../controller/ticket_contact_information_controller.dart';
import 'package:get/get.dart';

class TicketContactInformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketContactInformationController());
  }
}
