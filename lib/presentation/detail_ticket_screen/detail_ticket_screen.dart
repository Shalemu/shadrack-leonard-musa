import 'package:dotted_decoration/dotted_decoration.dart';

import '../detail_ticket_screen/widgets/listtitle_two1_item_widget.dart';
import 'controller/detail_ticket_controller.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_image.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_subtitle.dart';
import 'package:mauzoApp/widgets/app_bar/custom_app_bar.dart';
import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class DetailTicketScreen extends GetWidget<DetailTicketController> {
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
                    margin:EdgeInsets.only(left: 24, top: 12, bottom: 12),
                    onTap: onTapArrowleft16),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_tickets".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgOverflowmenu,
                      margin:
                          getMargin(left: 24, top: 16, right: 24, bottom: 16))
                ]),
            body: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                        margin: getMargin(left: 24, top: 16, right: 24),
                        child: Container(
                            margin: getMargin(bottom: 10),
                            decoration: AppDecoration.fillGray50.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder32,
                              boxShadow: [
                                BoxShadow(
                                  color: ColorConstant.gray90019,
                                  spreadRadius: getHorizontalSize(
                                    0.00,
                                  ),
                                  blurRadius: getHorizontalSize(
                                    16.00,
                                  ),
                                  offset: Offset(
                                    0,
                                    4,
                                  ),
                                ),
                              ],
                            ),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: getMargin(
                                          left: 20, top: 20, right: 20),
                                      color: ColorConstant.whiteA700,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder16),
                                      child: Container(
                                          height: getVerticalSize(178.00),
                                          width: getHorizontalSize(287.00),
                                          decoration: AppDecoration
                                              .fillWhiteA700
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder16),
                                          child: Stack(children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: getPadding(all: 4),
                                                    child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    12.00)),
                                                        child: CommonImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgImg170x279,
                                                            height:
                                                                getVerticalSize(
                                                                    170.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    279.00),
                                                            fit:
                                                                BoxFit.cover))))
                                          ]))),
                                  Container(
                                      height: getVerticalSize(318.00),
                                      width: getHorizontalSize(259.00),
                                      margin: getMargin(
                                          left: 20,
                                          top: 24,
                                          right: 20,
                                          bottom: 34),
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgBackgroundGray202,
                                                    height:
                                                        getVerticalSize(300.00),
                                                    width: getHorizontalSize(
                                                        259.00))),
                                            Align(
                                                alignment:
                                                    Alignment.topCenter,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 22,
                                                        top: 20,
                                                        right: 22,
                                                        bottom: 20),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      184.00),
                                                             
                                                              child: Text(
                                                                  "msg_startup_business"
                                                                      .tr,
                                                                  maxLines:
                                                                      null,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: AppStyle
                                                                      .txtNotoSansJPBold14)),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00),
                                                          
                                                              margin: getMargin(
                                                                  top: 19),
                                                              decoration:
                                                                 DottedDecoration(
      shape: Shape.line, linePosition: LinePosition.bottom,
      color: ColorConstant.gray200,
      ),),
                                                         ListtitleTwo1ItemWidget(
                                                          titleOne: 'Date',contentOne: 'Sep 29, 2022',
                                                          titleTwo: 'Time',
                                                          contentTwo: '09:00 PM',

                                                                           ),
                                                         ListtitleTwo1ItemWidget(
                                                          titleOne: 'Venue',contentOne: 'Building park',
                                                          titleTwo: 'Seat',
                                                          contentTwo: 'No seat',

                                                                           ),
                                                        
                                                          Container(
                                                            height:
                                                                getVerticalSize(
                                                                    1.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    211.00),
                                                            margin: getMargin(
                                                                top: 30),
                                                            decoration:
                                                                DottedDecoration(
                                                              shape: Shape.line,
                                                              linePosition:
                                                                  LinePosition
                                                                      .bottom,
                                                              color:
                                                                  ColorConstant
                                                                      .gray200,
                                                            ),
                                                          ),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 19),
                                                              child: CommonImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgBarcode1,
                                                                  height:
                                                                      getVerticalSize(
                                                                          38.00),
                                                                  width: getHorizontalSize(
                                                                      211.00)))
                                                        ])))
                                          ]))
                                ]))),
                  ),
                  Padding(
                      padding:
                          getPadding(left: 24, top: 10, right: 24, bottom: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: CustomButton(
                                  width: 152,
                                  text: "lbl_download_image".tr,
                                  shape: ButtonShape.RoundedBorder16,
                                  padding: ButtonPadding.PaddingAll13,
                                  fontStyle:
                                      ButtonFontStyle.NotoSansJPBold12WhiteA700,
                                  prefixWidget: Container(
                                      margin: getMargin(right: 10),
                                      child: CommonImageView(
                                          svgPath:
                                              ImageConstant.imgArrowdown))),
                            ),
                            Expanded(
                              child: CustomButton(
                                  width: 152,
                                  text: "lbl_show_qr_code".tr,
                                  margin: getMargin(left: 12),
                                  variant: ButtonVariant.OutlineGray6000a,
                                  padding: ButtonPadding.PaddingAll13,
                                  fontStyle: ButtonFontStyle.NotoSansJPBold12,
                                  onTap: (){
                                    Get.toNamed(AppRoutes.detailTicketBarcodeScreen);
                                  },
                                  prefixWidget: Container(
                                      margin: getMargin(right: 10),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgQrcode))),
                            )
                          ]))
                ])));
  }

  onTapArrowleft16() {
    
    Get.back();
  }
}
