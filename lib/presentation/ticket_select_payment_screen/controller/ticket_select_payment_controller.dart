import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/presentation/ticket_select_payment_screen/models/ticket_select_payment_model.dart';

class TicketSelectPaymentController extends GetxController {
  Rx<TicketSelectPaymentModel> ticketSelectPaymentModelObj =
      TicketSelectPaymentModel().obs;

  String radioGroup = "";

  

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
onRadioButonChange(String val){
  radioGroup=val;
  update();
}

}
