import 'package:mauzoApp/presentation/movie_player/movie_player.dart';
import 'package:mauzoApp/widgets/spacing.dart';

import 'controller/detail_event_controller.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_image.dart';
import 'package:mauzoApp/widgets/app_bar/custom_app_bar.dart';
import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:mauzoApp/widgets/custom_icon_button.dart';
import 'package:readmore/readmore.dart';
import 'package:flutter/material.dart';

class DetailEventScreen extends GetWidget<DetailEventController> {
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
                    onTap: onTapArrowleft2),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgShare,
                      margin: getMargin(left: 24, top: 16, bottom: 16)),
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgFavorite,
                      margin:
                          getMargin(left: 16, top: 16, right: 24, bottom: 16))
                ]),
            body: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                              height: getVerticalSize(240.00),
                              width: getHorizontalSize(327.00),
                              margin: getMargin(left: 23, top: 12, right: 23),
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(16.00)),
                                            child: CommonImageView(
                                                imagePath:
                                                    ImageConstant.imgImg240x327,
                                                height: getVerticalSize(240.00),
                                                width:
                                                    getHorizontalSize(327.00),
                                                fit: BoxFit.cover))),
                                    CustomButton(
                                        width: 113,
                                        text: "lbl_watch_video".tr,
                                        margin: getMargin(all: 16),
                                        variant: ButtonVariant.OutlineGray9003d,
                                        shape: ButtonShape.RoundedBorder16,
                                        padding: ButtonPadding.PaddingAll10,
                                        fontStyle:
                                            ButtonFontStyle.NotoSansJPRegular12,
                                        prefixWidget: Container(
                                            margin: getMargin(right: 10),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            8.00))),
                                            child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgCamera)),
                                        alignment: Alignment.bottomLeft,
                                        onTap: (){
                                          Get.to(MoviePlayer());
                                        },
                                        )
                                  ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: getHorizontalSize(282.00),
                                  margin:
                                      getMargin(left: 24, top: 23, right: 24),
                                  child: Text("msg_newy_art_festival".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.start,
                                      style: AppStyle.txtNotoSansJPBold20))),
                          Padding(
                              padding: getPadding(left: 23, top: 29, right: 23),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                              decoration: AppDecoration
                                                  .fillGray100
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder13),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 15,
                                                            top: 7,
                                                            right: 15),
                                                        child: Text("lbl_29".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: AppStyle
                                                                .txtNotoSansJPBold14)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 15,
                                                            top: 1,
                                                            right: 15,
                                                            bottom: 4),
                                                        child: Text(
                                                            "lbl_sep".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: AppStyle
                                                                .txtNotoSansJPRegular10))
                                                  ])),
                                          Padding(
                                              padding: getPadding(
                                                  left: 16, top: 4, bottom: 2),
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
                                                            right: 10),
                                                        child: Text(
                                                            "lbl_friday".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: AppStyle
                                                                .txtNotoSansJPBold14)),
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 1),
                                                        child: Text(
                                                            "lbl_09_00_pm_end"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: AppStyle
                                                                .txtNotoSansJPRegular12))
                                                  ]))
                                        ]),
                                    CustomIconButton(
                                        height: 48,
                                        width: 48,
                                        variant:
                                            IconButtonVariant.Outlineprimary,
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgCalendar))
                                  ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      getPadding(left: 23, top: 24, right: 23),
                                  child: Text("msg_about_this_events".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: AppStyle.txtNotoSansJPBold16))),
                         
                        
                          Padding(
                            padding:
                                      getPadding(left: 24, top: 9, right: 24),
                            child: ReadMoreText(
                              
                              "msg_we_re_celebrating".tr,
                              trimLines: 3,
                              style: AppStyle.txtNotoSansJPRegular14,
                              
                              colorClickableText:ColorConstant.primary,

                              trimMode: TrimMode.Line,
                              trimCollapsedText: 'Show more',
                              trimExpandedText: 'Show less',
                              lessStyle: AppStyle
                                          .txtNotoSansJPMedium14primary,
                              moreStyle: AppStyle
                                          .txtNotoSansJPMedium14primary,
                            ),
                          ),
                        
                          Padding(
                              padding: getPadding(left: 23, top: 23, right: 23),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                     InkWell(
          highlightColor: Colors.transparent,
                                      onTap: (){
                                       Get.toNamed(AppRoutes.detailOrganizerScreen);
                                      },
                                      child: Row(
                                        children: [
                                          Container(
                                              decoration: AppDecoration
                                                  .fillGray100
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder24),
                                              child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.centerLeft,
                                                        child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        24.00)),
                                                            child: CommonImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgImg,
                                                                height: getSize(
                                                                    48.00),
                                                                width: getSize(
                                                                    48.00),
                                                                fit: BoxFit
                                                                    .cover)))
                                                  ])),
                                          Padding(
                                              padding: getPadding(
                                                  left: 16, top: 5, bottom: 2),
                                              child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        width: getHorizontalSize(
                                                            131.00),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisSize:
                                                                MainAxisSize.max,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top: 1),
                                                                  child: Text(
                                                                      "lbl_design_business"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: AppStyle
                                                                          .txtNotoSansJPBold14)),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          bottom:
                                                                              5),
                                                                  child: CommonImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgCheckmark16x16,
                                                                      height:
                                                                          getSize(
                                                                              16.00),
                                                                      width: getSize(
                                                                          16.00)))
                                                            ])),
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 1, right: 10),
                                                        child: Text(
                                                            "lbl_arts_crafts".tr,
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: AppStyle
                                                                .txtNotoSansJPRegular12))
                                                  ])),
                                        ],
                                      ),
                                    ),
                                    GetBuilder<DetailEventController>(
                                        builder: (getController) {
                                      return CustomButton(
                                          width: 100,
                                          text:
                                          getController.isFollowing == RxBool(true)
                                                  ? "lbl_following".tr
                                                  : "lbl_follow".tr,
                                          margin: getMargin(top: 4, bottom: 4),
                                          variant: getController.isFollowing == RxBool(true)
                                              ? ButtonVariant.Fillprimary
                                              : ButtonVariant.Outlineprimary,
                                          padding: ButtonPadding.PaddingAll10,
                                          onTap: () {
                                            getController.onFollowTap();
                                          },
                                          fontStyle:
                                              getController.isFollowing == RxBool(true)
                                                  ? ButtonFontStyle
                                                      .NotoSansJPBold12WhiteA700
                                                  : ButtonFontStyle
                                                      .NotoSansJPBold12primary);
                                    })
                                  ])),
                          Align(
                              alignment: AlignmentDirectional.centerStart,
                              child: Padding(
                                  padding:
                                      getPadding(left: 23, top: 26, right: 23),
                                  child: Text("lbl_agenda".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: AppStyle.txtNotoSansJPBold16))),
                          Container(
                              height: getVerticalSize(223.00),
                              margin: getMargin(
                                top: 14,
                              ),
                              child: ListView.separated(
                                padding: getPadding(left: 23, right: 23),
                                scrollDirection: Axis.horizontal,
                                itemCount: 2,
                                separatorBuilder: (context, index) =>
                                    HorizontalSpace(width: 12),
                                itemBuilder: (context, index) {
                                  return Container(
                                      decoration:
                                          AppDecoration.fillWhiteA700.copyWith(
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
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                                width: getHorizontalSize(64.00),
                                                margin: getMargin(
                                                    left: 24,
                                                    top: 24,
                                                    right: 24),
                                                decoration: AppDecoration
                                                    .fillGray100
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder32),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          32.00)),
                                                              child: CommonImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgImg3,
                                                                  height:
                                                                      getSize(
                                                                          64.00),
                                                                  width: getSize(
                                                                      64.00),
                                                                  fit: BoxFit
                                                                      .cover)))
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    left: 24,
                                                    top: 13,
                                                    right: 24),
                                                child: Text("lbl_starter_b".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: AppStyle
                                                        .txtNotoSansJPMedium14Gray902)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 24,
                                                    top: 4,
                                                    right: 24),
                                                child: Text(
                                                    "lbl_daryl_nehls".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: AppStyle
                                                        .txtNotoSansJPRegular12)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 24,
                                                    top: 15,
                                                    right: 24,
                                                    bottom: 23),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1,
                                                              bottom: 2),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgClock14x14,
                                                              height: getSize(
                                                                  14.00),
                                                              width: getSize(
                                                                  14.00))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 4),
                                                          child: Text(
                                                              "msg_10_00_10_15_pm"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: AppStyle
                                                                  .txtNotoSansJPRegular12))
                                                    ]))
                                          ]));
                                },
                              )),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      getPadding(left: 24, top: 16, right: 24),
                                  child: Text("lbl_location".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: AppStyle.txtNotoSansJPBold16))),
                          Container(
                              height: getVerticalSize(160.00),
                              width: getHorizontalSize(327.00),
                              margin: getMargin(
                                  left: 23, top: 20, right: 23, bottom: 10),
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(16.00)),
                                            child: CommonImageView(
                                                imagePath: ImageConstant.imgMap,
                                                height: getVerticalSize(160.00),
                                                width:
                                                    getHorizontalSize(327.00),
                                                fit: BoxFit.cover))),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 23,
                                                top: 14,
                                                right: 23,
                                                bottom: 14),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Container(
                                                          height:
                                                              getSize(20.00),
                                                          width: getSize(20.00),
                                                          margin: getMargin(
                                                              left: 10),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .whiteA700,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          10.00)),
                                                              border: Border.all(
                                                                  color: ColorConstant
                                                                      .gray902,
                                                                  width:
                                                                      getHorizontalSize(
                                                                          6.00)),
                                                              boxShadow: [
                                                                BoxShadow(
                                                                    color: ColorConstant
                                                                        .gray9003f,
                                                                    spreadRadius:
                                                                        getHorizontalSize(
                                                                            2.00),
                                                                    blurRadius:
                                                                        getHorizontalSize(
                                                                            2.00),
                                                                    offset:
                                                                        Offset(
                                                                            2,
                                                                            4))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          margin: getMargin(
                                                              top: 33,
                                                              right: 10),
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          16.00))),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                    margin: getMargin(
                                                                        bottom:
                                                                            3),
                                                                    decoration: AppDecoration
                                                                        .outlineDeeporange40026
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder16),
                                                                    child: Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .centerLeft,
                                                                        child: Padding(
                                                                            padding: getPadding(
                                                                                left: 7,
                                                                                top: 8,
                                                                                right: 9,
                                                                                bottom: 7),
                                                                            child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(8.00)), child: CommonImageView(svgPath: ImageConstant.imgLocation4, height: getSize(16.00), width: getSize(16.00), fit: BoxFit.cover))))),
                                                                Container(
                                                                    margin: getMargin(
                                                                        left:
                                                                            12,
                                                                        top: 1),
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(getHorizontalSize(
                                                                                16.00))),
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Align(
                                                                              alignment: Alignment.center,
                                                                              child: Padding(padding: getPadding(right: 3), child: Text("msg_building_park_001".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.start, style: AppStyle.txtNotoSansJPBold12Gray902))),
                                                                          Padding(
                                                                              padding: getPadding(top: 2),
                                                                              child: Text("msg_near_john_coffee".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.start, style: AppStyle.txtNotoSansJPRegular10Gray902))
                                                                        ]))
                                                              ])))
                                                ])))
                                  ])),
                        ],
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          margin: getMargin(top: 14, bottom: 20),
                          decoration: AppDecoration.fillWhiteA700,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 24, top: 14, bottom: 11),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_60_98_75_00".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style:
                                                  AppStyle.txtNotoSansJPBold16),
                                          Padding(
                                              padding:
                                                  getPadding(top: 4, right: 10),
                                              child: Text(
                                                  "lbl_200_spot_left".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: AppStyle
                                                      .txtNotoSansJPRegular12))
                                        ])),
                                CustomButton(
                                    width: 148,
                                    text: "lbl_get_a_ticket".tr,
                                    onTap: (){
                                      Get.toNamed(AppRoutes.selectTicketScreen);
                                    },
                                    margin:
                                        getMargin(top: 8, right: 24, bottom: 8),
                                    shape: ButtonShape.RoundedBorder16)
                              ])))
                ])));
  }

  onTapArrowleft2() {
    Get.back();
  }
}
