import 'controller/settings_controller.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_image.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_subtitle.dart';
import 'package:mauzoApp/widgets/app_bar/custom_app_bar.dart';
import 'package:mauzoApp/widgets/custom_icon_button.dart';
import 'package:mauzoApp/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SettingsScreen extends GetWidget<SettingsController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 56,
                leading: AppbarImage(
                    height: getSize(32.00),
                    width: getSize(32.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 24, top: 12, bottom: 12),
                    onTap: onTapArrowleft18),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_settings".tr)),
            body: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 23, top: 16, right: 24, bottom: 5),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("lbl_preference".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: AppStyle
                                      .txtNotoSansJPBold14Bluegray301),
                              Align(
                                  alignment: Alignment.center,
                                  child:  InkWell(
          highlightColor: Colors.transparent,
                                    onTap: (){
                                      Get.toNamed(AppRoutes.pushNotificationScreen);
                                    },
                                    child: Container(
                                        margin: getMargin(left: 1, top: 15),
                                        decoration: AppDecoration.fillGray100
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder16),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 12,
                                                      top: 12,
                                                      bottom: 12),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Card(
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            elevation: 0,
                                                            margin:
                                                                EdgeInsets.all(0),
                                                            color: ColorConstant
                                                                .whiteA700,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder8),
                                                            child: Container(
                                                                height: getSize(
                                                                    40.00),
                                                                width: getSize(
                                                                    40.00),
                                                                decoration: AppDecoration
                                                                    .outlineGray60005
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder8),
                                                                child: Stack(
                                                                    children: [
                                                                      Align(
                                                                          alignment:
                                                                              Alignment
                                                                                  .center,
                                                                          child: Padding(
                                                                              padding:
                                                                                  getPadding(all: 8),
                                                                              child: CommonImageView(svgPath: ImageConstant.imgNotification24x24, height: getSize(24.00), width: getSize(24.00))))
                                                                    ]))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 16,
                                                                top: 10,
                                                                bottom: 8),
                                                            child: Text(
                                                                "msg_push_notifications"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: AppStyle
                                                                    .txtNotoSansJPBold14))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 20,
                                                      right: 12,
                                                      bottom: 20),
                                                  child: Icon(Icons.arrow_forward_ios_rounded,
                                                   size: 20,
                                                   color:ColorConstant.bluegray301 ,
                                                  ))
                                            ])),
                                  )),
                             
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      margin: getMargin(left: 1, top: 15),
                                      decoration: AppDecoration.fillGray100
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    left: 12,
                                                    top: 12,
                                                    bottom: 12),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                    Container(
                                      padding: getPadding(all: 8),
                                  
                                      decoration: BoxDecoration(
                                          color: ColorConstant.whiteA700,
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(8.00)),
                                          boxShadow: [
                                            BoxShadow(
                                                color: ColorConstant.gray60005,
                                                spreadRadius:
                                                    getHorizontalSize(2.00),
                                                blurRadius:
                                                    getHorizontalSize(2.00),
                                                offset: Offset(0, 4))
                                          ]),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgMail)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 10,
                                                              bottom: 8),
                                                          child: Text(
                                                      "lbl_email_updates".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: AppStyle
                                                                  .txtNotoSansJPBold14))
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    top: 20,
                                                    right: 12,
                                                    bottom: 20),
                                                child: Icon(Icons.arrow_forward_ios_rounded,
                                                 size: 20,
                                                 color:ColorConstant.bluegray301 ,
                                                ))
                                          ]))),
                             
                          
                              Align(
                                  alignment: Alignment.center,
                                  child:  InkWell(
          highlightColor: Colors.transparent,
                                    onTap: (){
                                      Get.toNamed(AppRoutes.selectLanguageScreen);
                                    },
                                    child: Container(
                                        margin: getMargin(left: 1, top: 12),
                                        decoration: AppDecoration.fillGray100
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder16),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 12,
                                                      top: 12,
                                                      bottom: 12),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        CustomIconButton(
                                                            height: 40,
                                                            width: 40,
                                                            variant: IconButtonVariant
                                                                .OutlineGray60005,
                                                            shape: IconButtonShape
                                                                .RoundedBorder8,
                                                            padding:
                                                                IconButtonPadding
                                                                    .PaddingAll8,
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgGlobe)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 16,
                                                                top: 12,
                                                                bottom: 6),
                                                            child: Text(
                                                                "lbl_language".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: AppStyle
                                                                    .txtNotoSansJPBold14))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 20,
                                                      right: 12,
                                                      bottom: 20),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 2,
                                                                bottom: 1),
                                                            child: Text(
                                                                "lbl_english".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: AppStyle
                                                                    .txtNotoSansJPRegular14)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 4),
                                                            child:  Icon(Icons.arrow_forward_ios_rounded,
                                                   size: 20,
                                                   color:ColorConstant.bluegray301 ,
                                                  ))
                                                      ]))
                                            ])),
                                  )),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      margin: getMargin(left: 1, top: 12),
                                      decoration: AppDecoration.fillGray100
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    left: 12,
                                                    top: 12,
                                                    bottom: 12),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      CustomIconButton(
                                                          height: 40,
                                                          width: 40,
                                                          variant: IconButtonVariant
                                                              .OutlineGray60005,
                                                          shape: IconButtonShape
                                                              .RoundedBorder8,
                                                          padding:
                                                              IconButtonPadding
                                                                  .PaddingAll8,
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgMoon)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 10,
                                                              bottom: 8),
                                                          child: Text(
                                                              "lbl_dark_mode"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: AppStyle
                                                                  .txtNotoSansJPBold14))
                                                    ])),
                                            Obx(() => CustomSwitch(
                                                margin: getMargin(
                                                    top: 20,
                                                    right: 12,
                                                    bottom: 20),
                                                value: controller
                                                    .isSelectedSwitch.value,
                                                onChanged: (value) {
                                                  controller.isSelectedSwitch
                                                      .value = value;
                                                }))
                                          ]))),
                              Padding(
                                  padding: getPadding(top: 26, right: 10),
                                  child: Text("lbl_account_setting".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: AppStyle
                                          .txtNotoSansJPBold14Bluegray301)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      margin: getMargin(left: 1, top: 13),
                                      decoration: AppDecoration.fillGray100
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    left: 12,
                                                    top: 12,
                                                    bottom: 12),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Card(
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          elevation: 0,
                                                          margin:
                                                              EdgeInsets.all(0),
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder8),
                                                          child: Container(
                                                              height: getSize(
                                                                  40.00),
                                                              width: getSize(
                                                                  40.00),
                                                              decoration: AppDecoration
                                                                  .outlineGray60005
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder8),
                                                              child: Stack(
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Padding(
                                                                            padding:
                                                                                getPadding(all: 8),
                                                                            child: CommonImageView(svgPath: ImageConstant.imgProfilecircle, height: getSize(24.00), width: getSize(24.00))))
                                                                  ]))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 10,
                                                              bottom: 8),
                                                          child: Text(
                                                              "msg_personal_information"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: AppStyle
                                                                  .txtNotoSansJPBold14))
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    top: 20,
                                                    right: 12,
                                                    bottom: 20),
                                                child:  Icon(Icons.arrow_forward_ios_rounded,
                                                 size: 20,
                                                 color:ColorConstant.bluegray301 ,
                                                ))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child:  InkWell(
          highlightColor: Colors.transparent,
                                    onTap: (){
                                      Get.toNamed(AppRoutes.linkAccountScreen);
                                    },
                                    child: Container(
                                        margin: getMargin(left: 1, top: 12),
                                        decoration: AppDecoration.fillGray100
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder16),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 12,
                                                      top: 12,
                                                      bottom: 12),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Card(
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            elevation: 0,
                                                            margin:
                                                                EdgeInsets.all(0),
                                                            color: ColorConstant
                                                                .whiteA700,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder8),
                                                            child: Container(
                                                                height: getSize(
                                                                    40.00),
                                                                width: getSize(
                                                                    40.00),
                                                                decoration: AppDecoration
                                                                    .outlineGray60005
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder8),
                                                                child: Stack(
                                                                    children: [
                                                                      Align(
                                                                          alignment:
                                                                              Alignment
                                                                                  .center,
                                                                          child: Padding(
                                                                              padding:
                                                                                  getPadding(all: 8),
                                                                              child: CommonImageView(svgPath: ImageConstant.imgLink24x24, height: getSize(24.00), width: getSize(24.00))))
                                                                    ]))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 16,
                                                                top: 10,
                                                                bottom: 8),
                                                            child: Text(
                                                                "lbl_link_account"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: AppStyle
                                                                    .txtNotoSansJPBold14))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 20,
                                                      right: 12,
                                                      bottom: 20),
                                                  child:  Icon(Icons.arrow_forward_ios_rounded,
                                                   size: 20,
                                                   color:ColorConstant.bluegray301 ,
                                                  ))
                                            ])),
                                  )),
                              Padding(
                                  padding:
                                      getPadding(left: 1, top: 26, right: 10),
                                  child: Text("lbl_support".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: AppStyle
                                          .txtNotoSansJPBold14Bluegray301)),
                              Align(
                                  alignment: Alignment.center,
                                  child: InkWell(
                                    highlightColor: Colors.transparent,
                                    onTap: (){
                                      Get.toNamed(AppRoutes.aboutScreen);
                                    },
                                    child: Container(
                                        margin: getMargin(left: 1, top: 13),
                                        decoration: AppDecoration.fillGray100
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder16),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 12,
                                                      top: 12,
                                                      bottom: 12),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Container(
                                                            padding: getPadding(
                                                                left: 12,
                                                                right: 12),
                                                            decoration: AppDecoration
                                                                .txtOutlineGray60005
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .txtRoundedBorder8),
                                                            child: Text(
                                                                "lbl_e".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: AppStyle
                                                                    .txtNotoSansJPRegular28)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 15,
                                                                top: 10,
                                                                bottom: 8),
                                                            child: Text(
                                                                "lbl_about_evenline"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: AppStyle
                                                                    .txtNotoSansJPBold14))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 20,
                                                      right: 12,
                                                      bottom: 20),
                                                  child:  Icon(Icons.arrow_forward_ios_rounded,
                                                   size: 20,
                                                   color:ColorConstant.bluegray301 ,
                                                  ))
                                            ])),
                                  )),
                         
                         
                         
                         
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      margin: getMargin(left: 1, top: 12),
                                      decoration: AppDecoration.fillGray100
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    left: 12,
                                                    top: 12,
                                                    bottom: 12),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Card(
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          elevation: 0,
                                                          margin:
                                                              EdgeInsets.all(0),
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder8),
                                                          child: Container(
                                                              height: getSize(
                                                                  40.00),
                                                              width: getSize(
                                                                  40.00),
                                                              decoration: AppDecoration
                                                                  .outlineGray60005
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder8),
                                                              child: Stack(
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Padding(
                                                                            padding:
                                                                                getPadding(all: 8),
                                                                            child: CommonImageView(svgPath: ImageConstant.imgQuestion24x24, height: getSize(24.00), width: getSize(24.00))))
                                                                  ]))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 11,
                                                              bottom: 7),
                                                          child: Text(
                                                              "lbl_get_help".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: AppStyle
                                                                  .txtNotoSansJPBold14))
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    top: 20,
                                                    right: 12,
                                                    bottom: 20),
                                                child:  Icon(Icons.arrow_forward_ios_rounded,
                                                 size: 20,
                                                 color:ColorConstant.bluegray301 ,
                                                ))
                                          ]))),
                           
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      margin: getMargin(left: 1, top: 12),
                                      decoration: AppDecoration.fillGray100
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    left: 12,
                                                    top: 12,
                                                    bottom: 12),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Container(
                                      padding: getPadding(all: 8),
                                     
                                      decoration: BoxDecoration(
                                          color: ColorConstant.whiteA700,
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(8.00)),
                                          boxShadow: [
                                            BoxShadow(
                                                color: ColorConstant.gray60005,
                                                spreadRadius:
                                                    getHorizontalSize(2.00),
                                                blurRadius:
                                                    getHorizontalSize(2.00),
                                                offset: Offset(0, 4))
                                          ]),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgLock1)),
                                 
                                                   
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 11,
                                                              bottom: 7),
                                                          child: Text(
                                                             "lbl_privacy_policy2".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: AppStyle
                                                                  .txtNotoSansJPBold14))
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    top: 20,
                                                    right: 12,
                                                    bottom: 20),
                                                child:  Icon(Icons.arrow_forward_ios_rounded,
                                                 size: 20,
                                                 color:ColorConstant.bluegray301 ,
                                                ))
                                          ]))),
                           
                           
                         
                            ]))))));
  }

  onTapArrowleft18() {
    Get.back();
  }
}
