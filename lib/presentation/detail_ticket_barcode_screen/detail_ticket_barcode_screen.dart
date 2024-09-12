import 'controller/detail_ticket_barcode_controller.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_image.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_subtitle.dart';
import 'package:mauzoApp/widgets/app_bar/custom_app_bar.dart';
import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:mauzoApp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class DetailTicketBarcodeScreen
    extends GetWidget<DetailTicketBarcodeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 56,
                leading: AppbarImage(
                    height: getSize(32.00),
                    width: getSize(32.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 24, top: 12, bottom: 12),
                    onTap: onTapArrowleft17),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_qr_code".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgOverflowmenu,
                      margin:
                          getMargin(left: 24, top: 16, right: 24, bottom: 16))
                ]),
            body: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                          width: double.infinity,
                          margin: getMargin(left: 24, top: 48, right: 24),
                          decoration: AppDecoration.outlineGray6000a1.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder32),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding:
                                        getPadding(left: 24, top: 24, right: 24),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 2),
                                              child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(12.00)),
                                                  child: CommonImageView(
                                                      imagePath:
                                                          ImageConstant.imgImg,
                                                      height: getSize(64.00),
                                                      width: getSize(64.00),
                                                      fit: BoxFit.cover))),
                                          Padding(
                                              padding: getPadding(left: 16, top: 5),
                                              child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        width: getHorizontalSize(
                                                            179.00),
                                                        child: Text(
                                                            "msg_startup_business"
                                                                .tr,
                                                            maxLines: null,
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: AppStyle
                                                                .txtNotoSansJPMedium14Gray902)),
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 12, right: 10),
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
                                                                              2),
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
                                                                          left: 4,
                                                                          top: 1),
                                                                  child: Text(
                                                                      "lbl_sep_29_2022"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: AppStyle
                                                                          .txtNotoSansJPRegular10Gray902)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left: 16,
                                                                          bottom:
                                                                              2),
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
                                                                          left: 4,
                                                                          top: 1,
                                                                          bottom:
                                                                              1),
                                                                  child: Text(
                                                                      "lbl_09_00_pm"
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
                                        ])),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(279.00),
                                        margin:
                                            getMargin(left: 24, top: 22, right: 24),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray200))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 24,
                                            top: 39,
                                            right: 24,
                                            bottom: 56),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgGroup,
                                            height: getSize(180.00),
                                            width: getSize(180.00))))
                              ]
                              )
                              ),
                      Container(
                          margin: getMargin(left: 24, top: 32, right: 24),
                        
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                CustomIconButton(
                                    height: 40,
                                    width: 40,
                                    margin:
                                        getMargin(left: 16, top: 16, bottom: 16),
                                    variant: IconButtonVariant.FillWhiteA700,
                                    padding: IconButtonPadding.PaddingAll8,
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgLightbulb)),
                                Container(
                                    width: getHorizontalSize(214.00),
                                    margin:
                                        getMargin(left: 16, top: 22, bottom: 19),
                                    child: Text("msg_please_show_this".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.start,
                                        style:
                                            AppStyle.txtNotoSansJPRegular12Gray902))
                              ])),
                    ],
                  ),
                 
                 
                  Padding(
                      padding:
                          getPadding(left: 24, top: 10, right: 24, bottom: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            CustomButton(
                                width: 157,
                                text: "lbl_download_image".tr,
                                shape: ButtonShape.RoundedBorder16,
                                padding: ButtonPadding.PaddingAll13,
                                fontStyle: ButtonFontStyle.NotoSansJPBold12WhiteA700,
                                prefixWidget: Container(
                                    margin: getMargin(right: 10),
                                    
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgArrowdown))),
                            CustomButton(
                                width: 157,
                                text: "lbl_share_code".tr,
                                margin: getMargin(left: 12),
                                variant: ButtonVariant.OutlineGray6000a,
                                fontStyle: ButtonFontStyle.NotoSansJPBold12,
                                prefixWidget: Container(
                                    margin: getMargin(right: 10),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgShare20x20)))
                          ]))
                ])));
  }

  onTapArrowleft17() {
    Get.back();
  }
}
