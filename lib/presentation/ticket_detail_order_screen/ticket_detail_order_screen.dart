import 'controller/ticket_detail_order_controller.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_image.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_subtitle.dart';
import 'package:mauzoApp/widgets/app_bar/custom_app_bar.dart';
import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:mauzoApp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class TicketDetailOrderScreen extends GetWidget<TicketDetailOrderController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 56,
                leading: AppbarImage(
                    height: getSize(32.00),
                    width: getSize(32.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 24, top: 12, bottom: 12),
                    onTap: onTapArrowleft6),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_detail_order".tr)),
            body: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                       mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                           
                            margin: getMargin(left: 24, top: 16, right: 22),
                            child: Align(
                                alignment: Alignment.center,
                                child: Container(
                                    margin: getMargin(right: 2, bottom: 2),
                                    decoration: AppDecoration.fillWhiteA700
                                        .copyWith(
                                            borderRadius:
                                                BorderRadiusStyle.roundedBorder16,
                                                
                                                boxShadow: [
                                          BoxShadow(
                                            color: ColorConstant.gray60019,
                                            spreadRadius: getHorizontalSize(
                                              0.00,
                                            ),
                                            blurRadius: getHorizontalSize(
                                              10.00,
                                            ),
                                            offset: Offset(
                                              0,
                                              4,
                                            ),
                                          ),
                                        ],
                                                ),
                                    child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  left: 12, top: 12, bottom: 12),
                                              child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(12.00)),
                                                  child: CommonImageView(
                                                      imagePath:
                                                          ImageConstant.imgImg,
                                                      height:
                                                          getVerticalSize(96.00),
                                                      width:
                                                          getHorizontalSize(88.00),
                                                      fit: BoxFit.cover))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 12,
                                                  top: 19,
                                                  right: 30,
                                                  bottom: 13),
                                              child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        width: getHorizontalSize(
                                                            184.00),
                                                        child: Text(
                                                            "msg_startup_business"
                                                                .tr,
                                                            maxLines: null,
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: AppStyle
                                                                .txtNotoSansJPBold14)),
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 16, right: 10),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize.min,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          bottom:
                                                                              1),
                                                                  child: CommonImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgCalendar14x14,
                                                                      height:
                                                                          getSize(
                                                                              14.00),
                                                                      width: getSize(
                                                                          14.00))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left: 8,
                                                                          top: 1),
                                                                  child: Text(
                                                                      "lbl_march_29_2022"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: AppStyle
                                                                          .txtNotoSansJPRegular10Gray902))
                                                            ])),
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 7, right: 10),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize.max,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          bottom:
                                                                              1),
                                                                  child: CommonImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgClock14x14,
                                                                      height:
                                                                          getSize(
                                                                              14.00),
                                                                      width: getSize(
                                                                          14.00))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left: 8,
                                                                          top: 1),
                                                                  child: Text(
                                                                      "msg_10_00_pm_12_00"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: AppStyle
                                                                          .txtNotoSansJPRegular10Gray902))
                                                            ]))
                                                  ]))
                                        ])))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(left: 24, top: 26, right: 24),
                                child: Text("lbl_order_summary".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: AppStyle.txtNotoSansJPBold16))),
                        Container(
                            width: double.infinity,
                            margin: getMargin(left: 24, top: 13, right: 24),
                            decoration: AppDecoration.outlineGray101.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder16),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                      padding:
                                          getPadding(left: 16, top: 22, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding:
                                                    getPadding(top: 1, bottom: 1),
                                                child: Text("msg_1x_premium_price".tr,
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: AppStyle
                                                        .txtNotoSansJPRegular12)),
                                            Text("lbl_35_00".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: AppStyle
                                                    .txtNotoSansJPMedium14Gray902)
                                          ])),
                                  Padding(
                                      padding:
                                          getPadding(left: 16, top: 19, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding:
                                                    getPadding(top: 1, bottom: 2),
                                                child: Text("lbl_subtotal".tr,
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: AppStyle
                                                        .txtNotoSansJPRegular12)),
                                            Text("lbl_35_00".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: AppStyle
                                                    .txtNotoSansJPMedium14Gray902)
                                          ])),
                                  Padding(
                                      padding:
                                          getPadding(left: 16, top: 19, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding:
                                                    getPadding(top: 1, bottom: 2),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.center,
                                                    mainAxisSize: MainAxisSize.min,
                                                    children: [
                                                      Text("lbl_fees".tr,
                                                          overflow:
                                                              TextOverflow.ellipsis,
                                                          textAlign: TextAlign.start,
                                                          style: AppStyle
                                                              .txtNotoSansJPRegular12),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 4,
                                                              top: 1,
                                                              bottom: 1),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgWarning,
                                                              height: getSize(16.00),
                                                              width: getSize(16.00)))
                                                    ])),
                                            Text("lbl_02_11".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: AppStyle
                                                    .txtNotoSansJPMedium14Gray902)
                                          ])),
                                  Container(
                                      height: getVerticalSize(1.00),
                                      width: getHorizontalSize(295.00),
                                      margin: getMargin(left: 16, top: 20, right: 16),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.gray101)),
                                  Padding(
                                      padding: getPadding(
                                          left: 16, top: 18, right: 16, bottom: 17),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding:
                                                    getPadding(top: 3, bottom: 2),
                                                child: Text("lbl_total".tr,
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: AppStyle
                                                        .txtNotoSansJPRegular14)),
                                            Text("lbl_77_11".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: AppStyle.txtNotoSansJPBold18)
                                          ]))
                                ])),
                        Padding(
                            padding: getPadding(left: 24, top: 26, right: 24),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text("lbl_payment_method".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: AppStyle.txtNotoSansJPBold16),
                                  Padding(
                                      padding: getPadding(top: 1, bottom: 1),
                                      child:  InkWell(
          highlightColor: Colors.transparent,
                                        onTap: (){
                                          Get.toNamed(AppRoutes.ticketSelectPaymentScreen);
                                        },
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text("lbl_change".tr,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: AppStyle
                                                      .txtNotoSansJPMedium14primary),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 4, top: 2, bottom: 2),
                                                  child: Icon(Icons.arrow_forward_ios_rounded,
                                                  color: ColorConstant.primary,
                                                  size: 16,
                                                  ))
                                            ]),
                                      ))
                                ])),
                        Container(
                            margin: getMargin(left: 24, top: 13, right: 24),
                            decoration: AppDecoration.outlineGray1011.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder16),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                      padding:
                                          getPadding(left: 16, top: 21, bottom: 17),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(right: 10),
                                                child: Text("lbl_paypal".tr,
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: AppStyle
                                                        .txtNotoSansJPBold14)),
                                            Padding(
                                                padding: getPadding(top: 2),
                                                child: Text(
                                                    "msg_michella_barkin_mail_com".tr,
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: AppStyle
                                                        .txtNotoSansJPRegular12))
                                          ])),
                                  CustomIconButton(
                                      height: 48,
                                      width: 48,
                                      margin:
                                          getMargin(top: 16, right: 16, bottom: 16),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgMegaphone))
                                ])),
                      ],
                    ),
                  ),
                 
                 
                 
                  Container(
                      margin: getMargin(top: 10, bottom: 20),
                      decoration: AppDecoration.outlineGray90005,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                                padding: getPadding(
                                    left: 23, top: 14, bottom: 11),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: getPadding(
                                              left: 1, right: 10),
                                          child: Text("lbl_37_11".tr,
                                              overflow:
                                                  TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: AppStyle
                                                  .txtNotoSansJPBold16)),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text(
                                              "msg_you_re_going_1".tr,
                                              overflow:
                                                  TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: AppStyle
                                                  .txtNotoSansJPRegular12))
                                    ])),
                            CustomButton(
                                width: 148,
                                text: "lbl_place_order".tr,
                                margin:
                                    getMargin(top: 8, right: 24, bottom: 8),
                                shape: ButtonShape.RoundedBorder16,
                                onTap: (){
                                  Get.offNamedUntil(AppRoutes.ticketOrderCompletedScreen, (route) => false);
                                },
                                )
                          ]))
              
              
              
                ])));
  }

  onTapArrowleft6() {
    Get.back();
  }
}
