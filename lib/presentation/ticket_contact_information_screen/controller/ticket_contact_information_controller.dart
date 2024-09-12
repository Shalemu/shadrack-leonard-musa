import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/presentation/ticket_contact_information_screen/models/ticket_contact_information_model.dart';
import 'package:flutter/material.dart';

class TicketContactInformationController extends GetxController {
  TextEditingController inputController = TextEditingController(text: 'Michella Barkin');

  TextEditingController emailController = TextEditingController(text: 'michellabarkin@gmail.com');

  TextEditingController inputOneController = TextEditingController(text: '+1 2345 7789 908');

  Rx<TicketContactInformationModel> ticketContactInformationModelObj =
      TicketContactInformationModel().obs;

  RxBool checkbox = false.obs;

  @override
  void onReady() {
    super.onReady();
    
  }

  @override
  void onClose() {
    super.onClose();
    inputController.dispose();
    emailController.dispose();
    inputOneController.dispose();
  }
}
