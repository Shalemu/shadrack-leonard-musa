import 'package:mauzoApp/widgets/spacing.dart';

import 'controller/ticket_order_completed_controller.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class TicketOrderCompletedScreen
    extends GetWidget<TicketOrderCompletedController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  VerticalSpace(height: 30),
                  Padding(
                      padding: getPadding(left: 24, top: 16, right: 24),
                      child:  InkWell(
          highlightColor: Colors.transparent,
                          onTap: () {
                            onTapImgClose();
                          },
                          child: CommonImageView(
                              svgPath: ImageConstant.imgClose,
                              height: getSize(24.00),
                              width: getSize(24.00)))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: getVerticalSize(128.00),
                          width: getHorizontalSize(218.00),
                          margin: getMargin(left: 24, top: 115, right: 24),
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: getVerticalSize(128.00),
                                        width: getHorizontalSize(127.00),
                                        margin: getMargin(left: 40, right: 40),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray101,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(64.00))))),
                                Align(
                                    alignment: AlignmentDirectional.centerEnd,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 10, top: 10, bottom: 9),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgGroup29,
                                            height: getVerticalSize(108.00),
                                            width: getHorizontalSize(45.00)))),
                                Align(
                                    alignment: AlignmentDirectional.centerStart,
                                    child: Padding(
                                        padding: getPadding(
                                            top: 11, right: 10, bottom: 11),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgGroup28,
                                            height: getVerticalSize(104.00),
                                            width: getHorizontalSize(46.00)))),
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 30,
                                            top: 3,
                                            right: 30,
                                            bottom: 10),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                  height:
                                                      getVerticalSize(110.00),
                                                  width:
                                                      getHorizontalSize(103.00),
                                                  margin: getMargin(top: 5),
                                                  child: Stack(
                                                      alignment:
                                                          AlignmentDirectional.centerStart,
                                                      children: [
                                                        Align(
                                                            alignment: AlignmentDirectional
                                                                .centerEnd,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            10),
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgGroup19primary,
                                                                    height: getVerticalSize(
                                                                        110.00),
                                                                    width: getHorizontalSize(
                                                                        65.00)))),
                                                        Align(
                                                            alignment: AlignmentDirectional
                                                                .centerStart,
                                                            child: Padding(
                                                                padding: getPadding(
                                                                    top: 26,
                                                                    right: 10,
                                                                    bottom: 26),
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgCamera55x90,
                                                                    height: getVerticalSize(
                                                                        55.00),
                                                                    width: getHorizontalSize(
                                                                        90.00))))
                                                      ])),
                                              Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: getMargin(
                                                      left: 25, bottom: 95),
                                                  color:
                                                      ColorConstant.greenA700,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder10),
                                                  child: Container(
                                                      height: getSize(20.00),
                                                      width: getSize(20.00),
                                                      decoration: AppDecoration
                                                          .fillGreenA700
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .circleBorder10),
                                                      child: Stack(children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        all: 3),
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgCheckmark,
                                                                    height:
                                                                        getSize(
                                                                            14.00),
                                                                    width: getSize(
                                                                        14.00))))
                                                      ])))
                                            ])))
                              ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(left: 24, top: 51, right: 24),
                          child: Text("lbl_order_complete".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: AppStyle.txtNotoSansJPBold24))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          width: getHorizontalSize(198.00),
                          margin: getMargin(left: 24, top: 11, right: 24),
                          child: Text("msg_your_payment_was".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtNotoSansJPRegular14))),
                  CustomButton(
                      width: size.width,
                      text: "lbl_view_ticket".tr,
                      margin: getMargin(left: 24, top: 56, right: 24),
                      shape: ButtonShape.RoundedBorder16,
                      alignment: Alignment.center,
                      onTap: (){
                        Get.toNamed(AppRoutes.detailTicketScreen);
                      },
                      ),
                  CustomButton(
                      width: size.width,
                      text: "msg_discover_more_events".tr,
                      margin:
                          getMargin(left: 24, top: 12, right: 24, bottom: 5),
                      variant: ButtonVariant.Outlineprimary_1,
                      shape: ButtonShape.RoundedBorder16,
                      // fontStyle: ButtonFontStyle.NotoSansJPBold14primary,
                      alignment: Alignment.center,
                      onTap: (){
                        Get.offAllNamed(AppRoutes.homeVtwoContainerScreen);
                      },
                      )
                ])));
  }

  onTapImgClose() {
    Get.offNamedUntil(AppRoutes.homeVtwoContainerScreen, (route) => false);
  }

  
}
