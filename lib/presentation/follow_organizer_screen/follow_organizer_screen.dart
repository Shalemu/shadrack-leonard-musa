import 'package:mauzoApp/widgets/spacing.dart';

import 'controller/follow_organizer_controller.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_image.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:mauzoApp/widgets/app_bar/custom_app_bar.dart';
import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:mauzoApp/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class FollowOrganizerScreen extends GetWidget<FollowOrganizerController> {
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
                    margin:EdgeInsets.only(left: 24, top: 12, bottom: 12),
                    onTap: onTapArrowleft),
                actions: [
                  AppbarSubtitle1(
                    text: "lbl_skip_for_now".tr,
                    margin: getMargin(left: 24, top: 19, right: 24, bottom: 15),
                    onTap: () {
                      Get.offNamedUntil(
                          AppRoutes.homeVtwoContainerScreen, (route) => false);
                    },
                  )
                ]),
            body: SingleChildScrollView(
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: getPadding(left: 24, top: 27, right: 24),
                            child: Text("msg_famouse_organizer".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: AppStyle.txtNotoSansJPBold24))),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            width: getHorizontalSize(273.00),
                            margin: getMargin(left: 24, top: 11, right: 24),
                            child: Text("msg_follow_a_collections".tr,
                                maxLines: null,
                                textAlign: TextAlign.start,
                                style: AppStyle.txtNotoSansJPRegular14))),
                    CustomSearchView(
                        width: size.width,
                        focusNode: FocusNode(),
                        controller: controller.searchController,
                        hintText: "lbl_search".tr,
                        margin: getMargin(left: 17, top: 24, right: 17),
                        variant: SearchViewVariant.FillBluegray50,
                        alignment: Alignment.center,
                        prefix: Container(
                            margin: getMargin(
                                left: 16, top: 18, right: 10, bottom: 18),
                            child: CommonImageView(
                                svgPath: ImageConstant.imgSearch)),
                        prefixConstraints: BoxConstraints(
                            minWidth: getSize(20.00),
                            minHeight: getSize(20.00))),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: getPadding(left: 24, top: 24, right: 24),
                            child: Text("lbl_recomendations".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: AppStyle.txtNotoSansJPBold16))),
                    VerticalSpace(height: 10),
                    Container(
                      height: getVerticalSize(360),
                      child: Obx(() {
                        return ListView.separated(
                          padding: getPadding(left: 24, right: 24),
                          separatorBuilder: (context, index) =>
                              HorizontalSpace(width: 16),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: controller.organizersList.length,
                          itemBuilder: (context, index) {
                            return Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                      width: getHorizontalSize(244),
                                      decoration:
                                          AppDecoration.fillWhiteA700.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16,
                                        boxShadow: [
                                          BoxShadow(
                                            color: ColorConstant.gray90019,
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
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 12,
                                                        top: 12,
                                                        right: 12),
                                                    child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    15.00)),
                                                        child: CommonImageView(
                                                            imagePath: controller
                                                                .organizersList[
                                                                    index]
                                                                .img,
                                                            height:
                                                                getVerticalSize(
                                                                    140.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    216.00),
                                                            fit: BoxFit
                                                                .cover)))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 14,
                                                    right: 17),
                                                child: Text('',
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: AppStyle
                                                        .txtNotoSansJPBold14)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 3,
                                                    right: 17),
                                                child: Text("lbl_by_argenia".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: AppStyle
                                                        .txtNotoSansJPRegular12)),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 12,
                                                        top: 10,
                                                        right: 12),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 4,
                                                                      bottom:
                                                                          4),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgLocation,
                                                                  height:
                                                                      getSize(
                                                                          16.00),
                                                                  width: getSize(
                                                                      16.00))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 4,
                                                                      top: 4,
                                                                      bottom:
                                                                          1),
                                                              child: Text(
                                                                  "lbl_california_usa"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtNotoSansJPMedium12)),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      24.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      56.00),
                                                              margin: getMargin(
                                                                  left: 46),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Padding(
                                                                            padding:
                                                                                getPadding(left: 16, right: 16),
                                                                            child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(12.00)), child: CommonImageView(imagePath: ImageConstant.imgAvatar24x24, height: getSize(24.00), width: getSize(24.00), fit: BoxFit.cover)))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .centerRight,
                                                                        child: Padding(
                                                                            padding:
                                                                                getPadding(left: 10),
                                                                            child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(12.00)), child: CommonImageView(imagePath: ImageConstant.imgAvatar1, height: getSize(24.00), width: getSize(24.00), fit: BoxFit.cover))))
                                                                  ]))
                                                        ]))),
                                            GetBuilder<
                                                FollowOrganizerController>(
                                              builder: (controllers) =>
                                                  CustomButton(
                                                      width: 208,
                                                      text: controllers
                                                              .organizersList[
                                                                  index]
                                                              .isFollowing
                                                          ? 'Following'
                                                          : 'Follow',
                                                      margin: getMargin(
                                                          left: 12,
                                                          top: 24,
                                                          right: 12,
                                                          bottom: 20),
                                                      onTap: () {
                                                        controllers
                                                            .onFollowBtnTap(
                                                                index);
                                                      },
                                                      variant: controllers
                                                              .organizersList[
                                                                  index]
                                                              .isFollowing
                                                          ?ButtonVariant.Fillprimary: ButtonVariant
                                                          .OutlineTeal900,
                                                      fontStyle: controllers
                                                              .organizersList[
                                                                  index]
                                                              .isFollowing
                                                          ?ButtonFontStyle.NotoSansJPMedium12WhiteA700: ButtonFontStyle
                                                          .NotoSansJPBold12,
                                                      alignment:
                                                          Alignment.center),
                                            )
                                          ]))
                                ]);
                          },
                        );
                      }),
                    ),
                    CustomButton(
                        width: size.width,
                        text: "lbl_continue".tr,
                        margin: getMargin(left: 10, right: 10, bottom: 5),
                        shape: ButtonShape.RoundedBorder16,
                        alignment: Alignment.center,
                        onTap: (){
                          Get.toNamed(AppRoutes.pickInterestScreen);
                        },
                        )
                  ]),
            )));
  }

  onTapArrowleft() {
    Get.back();
  }
}
