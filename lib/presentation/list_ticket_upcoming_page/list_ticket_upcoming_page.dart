import '../list_ticket_upcoming_page/widgets/listbackground_item_widget.dart';
import 'controller/list_ticket_upcoming_controller.dart';
import 'models/list_ticket_upcoming_model.dart';
import 'models/listbackground_item_model.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ListTicketUpcomingPage extends StatelessWidget {
  ListTicketUpcomingController controller =
      Get.put(ListTicketUpcomingController(ListTicketUpcomingModel().obs));

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
            itemCount: controller
                .listTicketUpcomingModelObj.value.listbackgroundItemList.length,
            itemBuilder: (context, index) {
              ListbackgroundItemModel model = controller
                  .listTicketUpcomingModelObj
                  .value
                  .listbackgroundItemList[index];
              return ListbackgroundItemWidget(
                model,
              );
            },
          ),
        );
  }
}
