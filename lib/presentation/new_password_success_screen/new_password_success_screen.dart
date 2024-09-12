import 'package:mauzoApp/widgets/spacing.dart';

import 'controller/new_password_success_controller.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class NewPasswordSuccessScreen extends GetWidget<NewPasswordSuccessController> {
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
                  
                  Expanded(
                    child: Column(
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
                        Container(
                            height: getVerticalSize(136.00),
                            width: getHorizontalSize(218.00),
                            margin: getMargin(left: 68, top: 111, right: 68),
                            child: Stack(alignment: Alignment.bottomLeft, children: [
                              Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                      height: getVerticalSize(128.00),
                                      width: getHorizontalSize(127.00),
                                      margin: getMargin(left: 36, top: 10, right: 36),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.gray101,
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(64.00))))),
                              Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                      height: getVerticalSize(110.00),
                                      width: getHorizontalSize(114.00),
                                      margin: getMargin(
                                          left: 37, top: 10, right: 37, bottom: 9),
                                      child: Stack(
                                          alignment: Alignment.centerLeft,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerRight,
                                                child: Padding(
                                                    padding: getPadding(left: 10),
                                                    child: CommonImageView(
                                                        svgPath:
                                                            ImageConstant.imgGroup19,
                                                        height:
                                                            getVerticalSize(110.00),
                                                        width: getHorizontalSize(
                                                            65.00)))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    margin: getMargin(
                                                        top: 27,
                                                        right: 10,
                                                        bottom: 27),
                                                    decoration: AppDecoration
                                                        .outlineGray90019
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder8),
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment.center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Card(
                                                              clipBehavior:
                                                                  Clip.antiAlias,
                                                              elevation: 0,
                                                              margin: getMargin(
                                                                  left: 9,
                                                                  top: 14,
                                                                  bottom: 11),
                                                              color: ColorConstant
                                                                  .primary,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder13),
                                                              child: Container(
                                                                  height:
                                                                      getSize(27.00),
                                                                  width:
                                                                      getSize(27.00),
                                                                  decoration: AppDecoration
                                                                      .fillprimary
                                                                      .copyWith(
                                                                          borderRadius:
                                                                              BorderRadiusStyle
                                                                                  .roundedBorder13),
                                                                  child: Stack(
                                                                      children: [
                                                                        Align(
                                                                            alignment:
                                                                                Alignment
                                                                                    .center,
                                                                            child: Padding(
                                                                                padding: getPadding(
                                                                                    all:
                                                                                        4),
                                                                                child: CommonImageView(
                                                                                    svgPath: ImageConstant.imgCheckmark,
                                                                                    height: getSize(19.00),
                                                                                    width: getSize(19.00))))
                                                                      ]))),
                                                          Padding(
                                                              padding: getPadding(
                                                                  left: 6,
                                                                  top: 11,
                                                                  right: 9,
                                                                  bottom: 10),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgCar,
                                                                  height:
                                                                      getVerticalSize(
                                                                          31.00),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          50.00)))
                                                        ])))
                                          ]))),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                      padding:
                                          getPadding(left: 49, right: 49, bottom: 10),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgMaximize,
                                          height: getVerticalSize(21.00),
                                          width: getHorizontalSize(20.00)))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding:
                                          getPadding(left: 10, top: 13, bottom: 13),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgGroup29,
                                          height: getVerticalSize(108.00),
                                          width: getHorizontalSize(45.00)))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding:
                                          getPadding(top: 15, right: 10, bottom: 15),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgGroup28,
                                          height: getVerticalSize(104.00),
                                          width: getHorizontalSize(46.00))))
                            ])),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                width: getHorizontalSize(233.00),
                                margin: getMargin(left: 24, top: 55, right: 24),
                                child: Text("msg_you_have_successfully".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.txtNotoSansJPBold20))),
                      ],
                    ),
                  ),
              
              
              
                  CustomButton(
                      width: size.width,
                      text: "lbl_login".tr,
                      margin:
                          getMargin(left: 24,  right: 24, bottom: 20),
                      shape: ButtonShape.RoundedBorder16,
                      alignment: Alignment.center,
                      onTap: (){
                        Get.offNamedUntil(AppRoutes.loginEmptyStateScreen, (route) => false);
                      },
                      )
                ])));
  }

  onTapImgClose() {
    Get.offNamedUntil(AppRoutes.loginEmptyStateScreen, (route) => false);
  }
}
