import '../controller/detail_ticket_barcode_controller.dart';
import 'package:get/get.dart';

class DetailTicketBarcodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailTicketBarcodeController());
  }
}
