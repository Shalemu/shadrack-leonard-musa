import 'controller/ticket_select_payment_controller.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_image.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_subtitle.dart';
import 'package:mauzoApp/widgets/app_bar/custom_app_bar.dart';
import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:mauzoApp/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

class TicketSelectPaymentScreen
    extends GetWidget<TicketSelectPaymentController> {
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
                    onTap: onTapArrowleft7),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_select_payment".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgQuestion,
                      margin:
                          getMargin(left: 24, top: 16, right: 24, bottom: 16))
                ]),
            body: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                     mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                       InkWell(
          highlightColor: Colors.transparent,
                        onTap: (){
                          Get.back();
                        },
                        child: Container(
                            margin: getMargin(left: 24, top: 16, right: 24),
                            decoration: AppDecoration.outlineprimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder16),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                      padding:
                                          getPadding(left: 20, top: 24, bottom: 21),
                                      child: Text("msg_one_click_payment".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style:
                                              AppStyle.txtNotoSansJPBold12primary)),
                                  Padding(
                                      padding:
                                          getPadding(top: 20, right: 16, bottom: 20),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgArrowright,
                                          height: getSize(24.00),
                                          width: getSize(24.00)))
                                ])),
                      ),
                      Padding(
                          padding: getPadding(left: 24, top: 25, right: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(139.00),
                                    margin: getMargin(top: 9, bottom: 10),
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment(0.0034842889659598233,
                                                -0.5002556563231337),
                                            end: Alignment(0.9999999443990735,
                                                -0.5004710619341495),
                                            colors: [
                                          ColorConstant.gray200,
                                          ColorConstant.gray20000
                                        ]))),
                                Padding(
                                    padding: getPadding(left: 16),
                                    child: Text("lbl_or".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: AppStyle.txtNotoSansJPRegular14)),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(139.00),
                                    margin: getMargin(left: 16, top: 9, bottom: 10),
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment(0.0034842889659598233,
                                                -0.5002556563231337),
                                            end: Alignment(0.9999999443990735,
                                                -0.5004710619341495),
                                            colors: [
                                          ColorConstant.gray200,
                                          ColorConstant.gray20000
                                        ])))
                              ])),
                     
                     
                      GetBuilder<TicketSelectPaymentController>(
                        builder: (getController) {
                          return Column(
                            children: [
                               InkWell(
          highlightColor: Colors.transparent,
                                onTap: (){
                                  getController.onRadioButonChange("lbl_credit_cards".tr);
                                },
                                child: Container(
                                    margin: getMargin(left: 24, top: 22, right: 24),
                                    decoration: AppDecoration.fillGray100.copyWith(
                                        borderRadius: BorderRadiusStyle.roundedBorder16),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          CustomRadioButton(
                                              text: "lbl_credit_cards".tr,
                                              value: "lbl_credit_cards".tr,
                                              groupValue: getController.radioGroup,
                                              margin:
                                                  getMargin(left: 20, top: 23, bottom: 22),
                                              onChange: (value) {
                                               getController.onRadioButonChange(value);
                                              }),
                                          Padding(
                                              padding:
                                                  getPadding(top: 24, right: 20, bottom: 24),
                                              child: CommonImageView(
                                                  svgPath: ImageConstant.imgRefresh,
                                                  height: getVerticalSize(16.00),
                                                  width: getHorizontalSize(81.00)))
                                        ])),
                              ),
                               InkWell(
          highlightColor: Colors.transparent,
                                onTap: (){
                                  getController.onRadioButonChange("lbl_apple_pay".tr);
                                },
                                child: Container(
                                    margin: getMargin(left: 24, top: 12, right: 24),
                                    decoration: AppDecoration.fillGray100.copyWith(
                                        borderRadius: BorderRadiusStyle.roundedBorder16),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          CustomRadioButton(
                                              text: "lbl_apple_pay".tr,
                                              value: "lbl_apple_pay".tr,
                                            groupValue: getController.radioGroup,
                                              margin:
                                                  getMargin(left: 20, top: 23, bottom: 21),
                                              onChange: (value) {
                                                getController.onRadioButonChange(value);
                                              }),
                                          Padding(
                                              padding:
                                                  getPadding(top: 16, right: 20, bottom: 16),
                                              child: CommonImageView(
                                                  svgPath: ImageConstant.imgSettings32x40,
                                                  height: getVerticalSize(32.00),
                                                  width: getHorizontalSize(40.00)))
                                        ])),
                              ),
                               InkWell(
          highlightColor: Colors.transparent,
                                onTap: (){
                                    getController.onRadioButonChange("lbl_paypal".tr);
                                },
                                child: Container(
                                    margin: getMargin(left: 24, top: 12, right: 24),
                                    decoration: AppDecoration.fillGray100.copyWith(
                                        borderRadius: BorderRadiusStyle.roundedBorder16),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          CustomRadioButton(
                                              text: "lbl_paypal".tr,
                                            
                                              value: "lbl_paypal".tr,
                                              groupValue: getController.radioGroup,
                                              margin:
                                                  getMargin(left: 20, top: 23, bottom: 21),
                                              onChange: (value) {
                                                getController.onRadioButonChange(value);
                                              }),
                                          Padding(
                                              padding:
                                                  getPadding(top: 22, right: 20, bottom: 22),
                                              child: CommonImageView(
                                                  svgPath: ImageConstant.imgMegaphone,
                                                  height: getVerticalSize(20.00),
                                                  width: getHorizontalSize(16.00)))
                                        ])),
                              ),
                               InkWell(
          highlightColor: Colors.transparent,
                                onTap: (){
                                  getController.onRadioButonChange("lbl_payoneer".tr);
                                },
                                child: Container(
                                    margin: getMargin(left: 24, top: 12, right: 24),
                                    decoration: AppDecoration.fillGray100.copyWith(
                                        borderRadius: BorderRadiusStyle.roundedBorder16),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          CustomRadioButton(
                                              text: "lbl_payoneer".tr,
                                              value: "lbl_payoneer".tr,
                                              groupValue: getController.radioGroup,
                                              margin:
                                                  getMargin(left: 20, top: 23, bottom: 21),
                                              onChange: (value) {
                                                getController.onRadioButonChange(value);
                                              }),
                                          Padding(
                                              padding:
                                                  getPadding(top: 22, right: 20, bottom: 22),
                                              child: CommonImageView(
                                                  svgPath: ImageConstant.imgSignal,
                                                  height: getVerticalSize(19.00),
                                                  width: getHorizontalSize(56.00)))
                                        ])),
                              ),
                            ],
                          );
                        }
                      ),
                   
                   
                    ],
                  ),
               
               
               
                  CustomButton(
                      width: size.width,
                      text: "lbl_confirm".tr,
                      margin:
                          getMargin(left: 24, top: 10, right: 24, bottom: 20),
                          
                      shape: ButtonShape.RoundedBorder16,
                      onTap: (){
                        Get.back();
                      },
                      )
                ])));
  }

  onTapArrowleft7() {
    Get.back();
  }
}
