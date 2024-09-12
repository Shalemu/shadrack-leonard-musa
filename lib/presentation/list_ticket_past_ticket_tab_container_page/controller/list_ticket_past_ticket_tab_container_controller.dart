import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/presentation/list_ticket_past_ticket_tab_container_page/models/list_ticket_past_ticket_tab_container_model.dart';
import 'package:flutter/material.dart';

class ListTicketPastTicketTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  ListTicketPastTicketTabContainerController(
      this.listTicketPastTicketTabContainerModelObj);

  Rx<ListTicketPastTicketTabContainerModel>
      listTicketPastTicketTabContainerModelObj;

  late TabController segmentedController =
      Get.put(TabController(vsync: this, length: 2));
      
      DateTime selectedDate=DateTime.now();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
     segmentedController.dispose();
  }

onDateChanged (DateTime date){
  selectedDate=date;
  update();
}

}
