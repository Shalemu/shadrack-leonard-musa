import '../list_ticket_past_ticket_page/widgets/listbackground1_item_widget.dart';
import 'controller/list_ticket_past_ticket_controller.dart';
import 'models/list_ticket_past_ticket_model.dart';
import 'models/listbackground1_item_model.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ListTicketPastTicketPage extends StatelessWidget {
  ListTicketPastTicketController controller =
      Get.put(ListTicketPastTicketController(ListTicketPastTicketModel().obs));

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => ListView.builder(
              padding: getPadding(
              left: 22,
              right: 22
            ),
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: controller.listTicketPastTicketModelObj.value
                .listbackground1ItemList.length,
            itemBuilder: (context, index) {
              Listbackground1ItemModel model = controller
                  .listTicketPastTicketModelObj
                  .value
                  .listbackground1ItemList[index];
              return Listbackground1ItemWidget(
                model,
              );
            },
          ),
        );
  }
}
