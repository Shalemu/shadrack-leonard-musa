import 'package:date_picker_timeline/date_picker_widget.dart';

import 'controller/select_ticket_controller.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_image.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_subtitle.dart';
import 'package:mauzoApp/widgets/app_bar/custom_app_bar.dart';
import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SelectTicketScreen extends GetWidget<SelectTicketController> {
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
                    onTap: onTapArrowleft4),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_get_a_ticket".tr)),
            body: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
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
                              
                 
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                          width: double.infinity,
                          margin: getMargin(top: 16),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL40),
                          child: GetBuilder<SelectTicketController>(
                            builder: (getController) {
                              return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding:
                                            getPadding(left: 24, top: 16, right: 24),
                                        child: Text("msg_choose_the_ticket".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: AppStyle.txtNotoSansJPBold16)),
                                    Align(
                                        alignment: Alignment.center,
                                        child:  InkWell(
          highlightColor: Colors.transparent,
                                          onTap: (){
                                            getController.onPriceSelect(true);
                                          },
                                          child: Container(
                                              width: double.infinity,
                                              margin:
                                                  getMargin(left: 23, top: 15, right: 23),
                                              decoration:getController.isPremium? AppDecoration.outlineTeal900.copyWith(
                                                      borderRadius: BorderRadiusStyle
                                                          .roundedBorder16):AppDecoration.outlineGray1012
                                                  .copyWith(
                                                      borderRadius: BorderRadiusStyle
                                                          .roundedBorder16),
                                              child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                   Container(
                                                    padding: getPadding(
                                                      left: 12
                                                    ),
                                                    decoration: BoxDecoration(color:getController.isPremium? ColorConstant.teal900:ColorConstant.gray100,
                                                    borderRadius: BorderRadius.vertical(top: Radius.circular(16))
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text("lbl_premium_price".tr,
                                                        style: TextStyle(
                                                          fontFamily: 'Noto Sans JP',
                                                          color:getController.isPremium? ColorConstant.whiteA700:ColorConstant.gray900,
                                                          fontSize: getFontSize(12),
                                                          fontWeight: FontWeight.w500
                                                        ),
                                                        ),
                                                     getController.isPremium?   Container(
                                                            padding: getPadding(all: 2),
                                                            margin: getMargin(
                                                                left: 30,
                                                                top: 17,
                                                                right: 20,
                                                                bottom: 13),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .whiteA700,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            8.00))),
                                                            child: CommonImageView(
                                                                svgPath: ImageConstant
                                                                    .imgCheckmark10x10)):Container(
                                                            margin: getMargin(
                                                                left: 30,
                                                                top: 17,
                                                                right: 20,
                                                                bottom: 13),
                                                            child: CommonImageView(
                                                                svgPath: ImageConstant
                                                                    .imgSettings)),
                                                       
                                                      ],
                                                    ),
                                        
                                                   ),
                                                  
                                                  
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 16, top: 16, right: 16),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment.end,
                                                            mainAxisSize:
                                                                MainAxisSize.max,
                                                            children: [
                                                              Padding(
                                                                  padding: getPadding(
                                                                      bottom: 1),
                                                                  child: ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              getHorizontalSize(
                                                                                  12.00)),
                                                                      child: CommonImageView(
                                                                          imagePath:
                                                                              ImageConstant
                                                                                  .imgImg,
                                                                          height: getSize(
                                                                              72.00),
                                                                          width: getSize(
                                                                              72.00),
                                                                          fit: BoxFit
                                                                              .cover))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(top: 6),
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Container(
                                                                            width: getHorizontalSize(
                                                                                184.00),
                                                                            margin: getMargin(
                                                                                right:
                                                                                    10),
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
                                                                            width:
                                                                                getHorizontalSize(
                                                                                    203.00),
                                                                            margin:
                                                                                getMargin(
                                                                                    top:
                                                                                        13),
                                                                            child: Row(
                                                                                mainAxisAlignment:
                                                                                    MainAxisAlignment
                                                                                        .spaceBetween,
                                                                                crossAxisAlignment:
                                                                                    CrossAxisAlignment
                                                                                        .center,
                                                                                mainAxisSize:
                                                                                    MainAxisSize
                                                                                        .max,
                                                                                children: [
                                                                                  Padding(
                                                                                      padding:
                                                                                          getPadding(top: 1, bottom: 1),
                                                                                      child: Text("lbl_10_spot_left".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.start, style: AppStyle.txtNotoSansJPRegular12)),
                                                                                  Text(
                                                                                      "lbl_75_00"
                                                                                          .tr,
                                                                                      overflow:
                                                                                          TextOverflow.ellipsis,
                                                                                      textAlign: TextAlign.start,
                                                                                      style: AppStyle.txtNotoSansJPBold14)
                                                                                ]))
                                                                      ]))
                                                            ])),
                                                    Container(
                                                        height: getVerticalSize(1.00),
                                                        width: getHorizontalSize(291.00),
                                                        margin: getMargin(
                                                            left: 16, top: 15, right: 16),
                                                        decoration: BoxDecoration(
                                                            color:
                                                                ColorConstant.gray101)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 16,
                                                            top: 15,
                                                            right: 16,
                                                            bottom: 20),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment.center,
                                                            mainAxisSize:
                                                                MainAxisSize.max,
                                                            children: [
                                                              Padding(
                                                                  padding: getPadding(
                                                                      top: 3, bottom: 2),
                                                                  child: Row(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(
                                                                                    top:
                                                                                        1,
                                                                                    bottom:
                                                                                        2),
                                                                            child: CommonImageView(
                                                                                svgPath:
                                                                                    ImageConstant
                                                                                        .imgArrowrightprimary,
                                                                                height: getSize(
                                                                                    14.00),
                                                                                width: getSize(
                                                                                    14.00))),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(
                                                                                    left:
                                                                                        4),
                                                                            child: Text(
                                                                                "lbl_show_benefit"
                                                                                    .tr,
                                                                                overflow:
                                                                                    TextOverflow
                                                                                        .ellipsis,
                                                                                textAlign:
                                                                                    TextAlign
                                                                                        .start,
                                                                                style: AppStyle
                                                                                    .txtNotoSansJPMedium12primary))
                                                                      ])),
                                                              Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisSize:
                                                                      MainAxisSize.min,
                                                                  children: [
                                                                     InkWell(
                                                                      highlightColor: Colors.transparent,
                                                                      onTap: (){
                                                                        getController.onCounterChange(isIncreasing: false, premium: true);
                                                                      },
                                                                      child: Card(
                                                                          clipBehavior: Clip
                                                                              .antiAlias,
                                                                          elevation: 0,
                                                                          margin: EdgeInsets
                                                                              .all(0),
                                                                          color:
                                                                              ColorConstant
                                                                                  .gray100,
                                                                          shape: RoundedRectangleBorder(
                                                                              borderRadius:
                                                                                  BorderRadiusStyle
                                                                                      .roundedBorder8),
                                                                          child: Container(
                                                                              height:
                                                                                  getSize(
                                                                                      24.00),
                                                                              width: getSize(
                                                                                  24.00),
                                                                              decoration: AppDecoration
                                                                                  .fillGray100
                                                                                  .copyWith(
                                                                                      borderRadius: BorderRadiusStyle
                                                                                          .roundedBorder8),
                                                                              child: Stack(
                                                                                  children: [
                                                                                    Align(
                                                                                        alignment:
                                                                                            Alignment.center,
                                                                                        child: Padding(padding: getPadding(all: 6), child: CommonImageView(svgPath: ImageConstant.imgMenu12x12, height: getSize(12.00), width: getSize(12.00))))
                                                                                  ]))),
                                                                    ),
                                                                    Padding(
                                                                        padding:
                                                                            getPadding(
                                                                                left: 12,
                                                                                top: 2,
                                                                                bottom:
                                                                                    1),
                                                                        child: Text(
                                                                          getController.isPremium?  getController.numOfPremiumTickets.toString():'0',
                                                                            overflow:
                                                                                TextOverflow
                                                                                    .ellipsis,
                                                                            textAlign:
                                                                                TextAlign
                                                                                    .start,
                                                                            style: AppStyle
                                                                                .txtNotoSansJPBold14)),
                                                                     InkWell(
          highlightColor: Colors.transparent,
                                                                      onTap: (){
                                                                        getController.onCounterChange(isIncreasing: true, premium: true);
                                                                      },
                                                                      child: Card(
                                                                          clipBehavior: Clip
                                                                              .antiAlias,
                                                                          elevation: 0,
                                                                          margin: getMargin(
                                                                              left: 12),
                                                                          color:
                                                                              ColorConstant
                                                                                  .gray100,
                                                                          shape: RoundedRectangleBorder(
                                                                              borderRadius:
                                                                                  BorderRadiusStyle
                                                                                      .roundedBorder8),
                                                                          child: Container(
                                                                              height:
                                                                                  getSize(
                                                                                      24.00),
                                                                              width: getSize(
                                                                                  24.00),
                                                                              decoration: AppDecoration
                                                                                  .fillGray100
                                                                                  .copyWith(
                                                                                      borderRadius: BorderRadiusStyle
                                                                                          .roundedBorder8),
                                                                              child: Stack(
                                                                                  children: [
                                                                                    Align(
                                                                                        alignment:
                                                                                            Alignment.center,
                                                                                        child: Padding(padding: getPadding(all: 5), child: CommonImageView(svgPath: ImageConstant.imgPlus, height: getSize(14.00), width: getSize(14.00))))
                                                                                  ]))),
                                                                    ),
                                                                  ],
                                                                  
                                                                  ),
                                                            ],),),
                                                  ],),),
                                        )),
                                    Align(
                                        alignment: Alignment.center,
                                        child:  InkWell(
          highlightColor: Colors.transparent,
                                          onTap: (){
                                            getController.onPriceSelect(false);
                                          },
                                          child: Container(
                                              width: double.infinity,
                                              margin:
                                                  getMargin(left: 23, top: 16, right: 23),
                                              decoration:!getController.isPremium?
                                               AppDecoration.outlineTeal900
                                                  .copyWith(
                                                      borderRadius: BorderRadiusStyle
                                                          .roundedBorder16):
                                               AppDecoration.outlineGray1012
                                                  .copyWith(
                                                      borderRadius: BorderRadiusStyle
                                                          .roundedBorder16)
                                                          ,
                                              child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      padding: getPadding(
                                                        left: 12
                                                      ),
                                                      decoration: BoxDecoration(color:!getController.isPremium? ColorConstant.teal900:ColorConstant.gray100,
                                                      borderRadius: BorderRadius.vertical(top: Radius.circular(16))
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text("lbl_regular_price".tr,
                                                          style: TextStyle(
                                                            fontFamily: 'Noto Sans JP',
                                                            color:!getController.isPremium? ColorConstant.whiteA700:ColorConstant.gray900,
                                                            fontSize: getFontSize(12),
                                                            fontWeight: FontWeight.w500
                                                          ),
                                                          ),
                                                       !getController.isPremium?   Container(
                                                              padding: getPadding(all: 2),
                                                              margin: getMargin(
                                                                  left: 30,
                                                                  top: 17,
                                                                  right: 20,
                                                                  bottom: 13),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .whiteA700,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              8.00))),
                                                              child: CommonImageView(
                                                                  svgPath: ImageConstant
                                                                      .imgCheckmark10x10)):Container(
                                                              margin: getMargin(
                                                                  left: 30,
                                                                  top: 17,
                                                                  right: 20,
                                                                  bottom: 13),
                                                              child: CommonImageView(
                                                                  svgPath: ImageConstant
                                                                      .imgSettings)),
                                                         
                                                        ],
                                                      ),
                                          
                                                     ),
                                                    
                                                   
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 16, top: 16, right: 16),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment.end,
                                                            mainAxisSize:
                                                                MainAxisSize.max,
                                                            children: [
                                                              Padding(
                                                                  padding: getPadding(
                                                                      bottom: 1),
                                                                  child: ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              getHorizontalSize(
                                                                                  12.00)),
                                                                      child: CommonImageView(
                                                                          imagePath:
                                                                              ImageConstant
                                                                                  .imgImg,
                                                                          height: getSize(
                                                                              72.00),
                                                                          width: getSize(
                                                                              72.00),
                                                                          fit: BoxFit
                                                                              .cover))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(top: 6),
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Container(
                                                                            width: getHorizontalSize(
                                                                                184.00),
                                                                            margin: getMargin(
                                                                                right:
                                                                                    10),
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
                                                                            width:
                                                                                getHorizontalSize(
                                                                                    203.00),
                                                                            margin:
                                                                                getMargin(
                                                                                    top:
                                                                                        13),
                                                                            child: Row(
                                                                                mainAxisAlignment:
                                                                                    MainAxisAlignment
                                                                                        .spaceBetween,
                                                                                crossAxisAlignment:
                                                                                    CrossAxisAlignment
                                                                                        .center,
                                                                                mainAxisSize:
                                                                                    MainAxisSize
                                                                                        .max,
                                                                                children: [
                                                                                  Padding(
                                                                                      padding:
                                                                                          getPadding(top: 1, bottom: 1),
                                                                                      child: Text("lbl_90_spot_left".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.start, style: AppStyle.txtNotoSansJPRegular12)),
                                                                                  Text(
                                                                                      "lbl_60_98"
                                                                                          .tr,
                                                                                      overflow:
                                                                                          TextOverflow.ellipsis,
                                                                                      textAlign: TextAlign.start,
                                                                                      style: AppStyle.txtNotoSansJPBold14)
                                                                                ]))
                                                                      ]))
                                                            ])),
                                                    Container(
                                                        height: getVerticalSize(1.00),
                                                        width: getHorizontalSize(291.00),
                                                        margin: getMargin(
                                                            left: 16, top: 15, right: 16),
                                                        decoration: BoxDecoration(
                                                            color:
                                                                ColorConstant.gray101)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 16,
                                                            top: 15,
                                                            right: 16,
                                                            bottom: 20),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment.center,
                                                            mainAxisSize:
                                                                MainAxisSize.max,
                                                            children: [
                                                              Padding(
                                                                  padding: getPadding(
                                                                      top: 3, bottom: 2),
                                                                  child: Row(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(
                                                                                    top:
                                                                                        1,
                                                                                    bottom:
                                                                                        2),
                                                                            child: CommonImageView(
                                                                                svgPath:
                                                                                    ImageConstant
                                                                                        .imgArrowrightprimary,
                                                                                height: getSize(
                                                                                    14.00),
                                                                                width: getSize(
                                                                                    14.00))),
                                                                        Padding(
                                                                            padding:
                                                                                getPadding(
                                                                                    left:
                                                                                        4),
                                                                            child: Text(
                                                                                "lbl_show_benefit"
                                                                                    .tr,
                                                                                overflow:
                                                                                    TextOverflow
                                                                                        .ellipsis,
                                                                                textAlign:
                                                                                    TextAlign
                                                                                        .start,
                                                                                style: AppStyle
                                                                                    .txtNotoSansJPMedium12primary))
                                                                      ])),
                                                              Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisSize:
                                                                      MainAxisSize.min,
                                                                  children: [
                                                                     InkWell(
          highlightColor: Colors.transparent,
                                                                      onTap: (){
                                                                        getController.onCounterChange(isIncreasing: false, premium: false);
                                                                      },
                                                                      child: Card(
                                                                          clipBehavior: Clip
                                                                              .antiAlias,
                                                                          elevation: 0,
                                                                          margin: EdgeInsets
                                                                              .all(0),
                                                                          color:
                                                                              ColorConstant
                                                                                  .gray100,
                                                                          shape: RoundedRectangleBorder(
                                                                              borderRadius:
                                                                                  BorderRadiusStyle
                                                                                      .roundedBorder8),
                                                                          child: Container(
                                                                              height:
                                                                                  getSize(
                                                                                      24.00),
                                                                              width: getSize(
                                                                                  24.00),
                                                                              decoration: AppDecoration
                                                                                  .fillGray100
                                                                                  .copyWith(
                                                                                      borderRadius: BorderRadiusStyle
                                                                                          .roundedBorder8),
                                                                              child: Stack(
                                                                                  children: [
                                                                                    Align(
                                                                                        alignment:
                                                                                            Alignment.center,
                                                                                        child: Padding(padding: getPadding(all: 6), child: CommonImageView(svgPath: ImageConstant.imgMenu12x12, height: getSize(12.00), width: getSize(12.00))))
                                                                                  ]))),
                                                                    ),
                                                                    Padding(
                                                                        padding:
                                                                            getPadding(
                                                                                left: 12,
                                                                                top: 2,
                                                                                bottom:
                                                                                    1),
                                                                        child: Text(
                                                                           getController.isPremium?'0' :getController.numOfRegularTickets.toString(),
                                                                            overflow:
                                                                                TextOverflow
                                                                                    .ellipsis,
                                                                            textAlign:
                                                                                TextAlign
                                                                                    .start,
                                                                            style: AppStyle
                                                                                .txtNotoSansJPBold14)),
                                                                     InkWell(
          highlightColor: Colors.transparent,
                                                                        onTap: (){
                                                                        getController.onCounterChange(isIncreasing: true, premium: false);
                                                                      },
                                                                      child: Card(
                                                                          clipBehavior: Clip
                                                                              .antiAlias,
                                                                          elevation: 0,
                                                                          margin: getMargin(
                                                                              left: 12),
                                                                          color:
                                                                              ColorConstant
                                                                                  .gray100,
                                                                          shape: RoundedRectangleBorder(
                                                                              borderRadius:
                                                                                  BorderRadiusStyle
                                                                                      .roundedBorder8),
                                                                          child: Container(
                                                                              height:
                                                                                  getSize(
                                                                                      24.00),
                                                                              width: getSize(
                                                                                  24.00),
                                                                              decoration: AppDecoration
                                                                                  .fillGray100
                                                                                  .copyWith(
                                                                                      borderRadius: BorderRadiusStyle
                                                                                          .roundedBorder8),
                                                                              child: Stack(
                                                                                  children: [
                                                                                    Align(
                                                                                        alignment:
                                                                                            Alignment.center,
                                                                                        child: Padding(padding: getPadding(all: 5), child: CommonImageView(svgPath: ImageConstant.imgPlus, height: getSize(14.00), width: getSize(14.00))))
                                                                                  ]))),
                                                                    )
                                                                  ])
                                                            ]))
                                                  ])),
                                        )),
                                  
                                  
                                  
                                 
                                  ]);
                            }
                          )),
                    ),
                  )
              
              
              
               , Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 23,
                                                top: 10,
                                                right: 23,
                                                bottom: 20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 6, bottom: 3),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment.start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment.start,
                                                          children: [
                                                            Padding(
                                                                padding: getPadding(
                                                                    left: 1, right: 10),
                                                                child: Text(
                                                                    "lbl_75_00".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign.start,
                                                                    style: AppStyle
                                                                        .txtNotoSansJPBold16)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(top: 4),
                                                                child: Text(
                                                                    "msg_you_re_going_1"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign.start,
                                                                    style: AppStyle
                                                                        .txtNotoSansJPRegular12))
                                                          ])),
                                                  CustomButton(
                                                      width: 148,
                                                      text: "lbl_continue".tr,
                                                      shape:
                                                          ButtonShape.RoundedBorder16,
                                                          onTap: (){
                                                            Get.offNamed(AppRoutes.ticketContactInformationScreen);

                                                          },
                                                          )
                                                ])))
                                 
                ])));
  }

  onTapArrowleft4() {
    Get.back();
  }
}
