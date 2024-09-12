import 'package:animate_do/animate_do.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:mauzoApp/widgets/spacing.dart';

import 'controller/list_ticket_past_ticket_tab_container_controller.dart';
import 'models/list_ticket_past_ticket_tab_container_model.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/presentation/list_ticket_past_ticket_page/list_ticket_past_ticket_page.dart';
import 'package:mauzoApp/presentation/list_ticket_upcoming_page/list_ticket_upcoming_page.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_image.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_subtitle.dart';
import 'package:mauzoApp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ListTicketPastTicketTabContainerPage extends StatelessWidget {
  ListTicketPastTicketTabContainerController controller = Get.put(
      ListTicketPastTicketTabContainerController(
          ListTicketPastTicketTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: double.infinity,
                          decoration: AppDecoration.fillWhiteA700
                              .copyWith(
                                  borderRadius: BorderRadiusStyle
                                      .customBorderBL30),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment:
                                  CrossAxisAlignment.center,
                              mainAxisAlignment:
                                  MainAxisAlignment.start,
                              children: [
                                CustomAppBar(
                                    height:
                                        getVerticalSize(56.00),
                                    leadingWidth: 56,
                                    leading: AppbarImage(
                                        height: getSize(32.00),
                                        width: getSize(32.00),
                                        svgPath: ImageConstant
                                            .imgArrowleft,
                                        margin:
                                            EdgeInsets.only(left: 24),
                                        onTap: onTapArrowleft15),
                                    centerTitle: true,
                                    title: AppbarSubtitle(
                                        text: "lbl_tickets".tr),
                                    actions: [
                                      AppbarImage(
                                          height: getSize(24.00),
                                          width: getSize(24.00),
                                          svgPath: ImageConstant
                                              .imgOverflowmenu,
                                          margin: getMargin(
                                              left: 24,
                                              top: 4,
                                              right: 24,
                                              bottom: 4))
                                    ]),
                                Padding(
                                    padding: getPadding(
                                        left: 24,
                                        top: 28,
                                        right: 24),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment
                                                .center,
                                        mainAxisSize:
                                            MainAxisSize.max,
                                        children: [
                                          Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .center,
                                              mainAxisSize:
                                                  MainAxisSize
                                                      .max,
                                              children: [
                                              
                                              
                                              Padding(
                                                    padding:
                                                        getPadding(
                                                            left:
                                                                8,
                                                            top:
                                                                3),
                                                    child: GetBuilder<ListTicketPastTicketTabContainerController>(
                                                      builder: (getController) {
                                                        return Text(
                                                            getController.selectedDate.format("MMMM yyyy")
                                                              ,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign
                                                                    .start,
                                                            style: AppStyle
                                                                .txtNotoSansJPMedium14Gray902);
                                                      }
                                                    )),
                                              
                                             
                                              ]),
                                          Padding(
                                              padding: getPadding(
                                                  bottom: 1),
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant
                                                          .imgCalendar14x14,
                                                  height: getSize(
                                                      24.00),
                                                  width: getSize(
                                                      24.00)))
                                        ])),
                                Padding(
                                  padding: getPadding(
                                      left: 24,
                                      top: 8,
                                      right: 24),
                                  child: DatePicker(
                                    DateTime.now(),
                                    initialSelectedDate:
                                        DateTime.now(),

                                    selectionColor: ColorConstant.teal900,

                                    selectedTextColor:
                                        Colors.white,
                                       
                                        dateTextStyle: TextStyle(
                                          fontSize: getFontSize(14),
                                          fontWeight: FontWeight.w700
                                        ),
                                        dayTextStyle: TextStyle(
                                          fontSize: getFontSize(10),
                                          fontWeight: FontWeight.w400,
                                          color: ColorConstant.bluegray301
                                        ),
                                        monthTextStyle: TextStyle(
                                          fontSize: getFontSize(10),
                                          fontWeight: FontWeight.w400,
                                          color: ColorConstant.bluegray301
                                        ),
                                    onDateChange: (date) {
                                      controller.onDateChanged(date);
                                    },
                                  ),
                                ),
                              
                              
                                Container(
                                    height: getVerticalSize(6.00),
                                    width:
                                        getHorizontalSize(32.00),
                                    margin: getMargin(
                                        left: 24,
                                        top: 20,
                                        right: 24,
                                        bottom: 12),
                                    decoration: BoxDecoration(
                                        color:
                                            ColorConstant.gray101,
                                        borderRadius:
                                            BorderRadius.circular(
                                                getHorizontalSize(
                                                    3.00)
                                                    )
                                                    )
                                                    )
                              ]
                              )
                              )
                              ),
                  Container(
                      width: getHorizontalSize(327.00),
                      margin:
                          getMargin(left: 24, top: 16, right: 24),
                      decoration: BoxDecoration(
                          color: ColorConstant.whiteA700,
                          borderRadius: BorderRadius.circular(
                              getHorizontalSize(12.00))),
                      child: TabBar(
                          controller:
                              controller.segmentedController,
                          tabs: [
                            Tab(text: "lbl_upcoming".tr),
                            Tab(text: "lbl_past_ticket".tr)
                          ],
                          labelColor: ColorConstant.whiteA700,
                          unselectedLabelColor:
                              ColorConstant.bluegray301,
                          indicatorPadding: getPadding(all: 4),
                          indicator: BoxDecoration(
                              color: ColorConstant.teal900,
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(8.00)),
                              boxShadow: [
                                BoxShadow(
                                    color:
                                        ColorConstant.gray90005,
                                    spreadRadius:
                                        getHorizontalSize(2.00),
                                    blurRadius:
                                        getHorizontalSize(2.00),
                                    offset: Offset(0, 2))
                              ]))),
                VerticalSpace(height: 14),
                  Expanded(
                    child: TabBarView(
                      
                        controller:
                            controller.segmentedController,
                        children: [
                          FadeInLeft(child: ListTicketUpcomingPage()),
                          FadeInLeft(child: ListTicketPastTicketPage())
                        ]),
                  )
                ])));
  }

  onTapArrowleft15() {}

  onTapImgArrowleftOne() {
    Get.back();
  }
}
