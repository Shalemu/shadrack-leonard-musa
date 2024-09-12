import 'controller/detail_event_play_video_controller.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:flutter/material.dart';

class DetailEventPlayVideoScreen
    extends GetWidget<DetailEventPlayVideoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: size.height,
                width: size.width,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CommonImageView(
                        imagePath: ImageConstant.imgImg812x375,
                        height: getVerticalSize(
                          812.00,
                        ),
                        width: getHorizontalSize(
                          375.00,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: size.height,
                        width: size.width,
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: CommonImageView(
                                imagePath: ImageConstant.imgOverlay,
                                height: getVerticalSize(
                                  812.00,
                                ),
                                width: getHorizontalSize(
                                  375.00,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: getPadding(
                                  right: 10,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          decoration: AppDecoration
                                              .gradientGray900b2Gray90000,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  left: 24,
                                                  top: 24,
                                                  right: 24,
                                                ),
                                                child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgLocation24x24,
                                                  height: getSize(
                                                    24.00,
                                                  ),
                                                  width: getSize(
                                                    24.00,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: getHorizontalSize(
                                                  8.00,
                                                ),
                                                margin: getMargin(
                                                  left: 24,
                                                  top: 24,
                                                  right: 24,
                                                ),
                                                decoration: AppDecoration
                                                    .fillWhiteA7004c
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder4,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                        height: getVerticalSize(
                                                          220.00,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          8.00,
                                                        ),
                                                        margin: getMargin(
                                                          bottom: 292,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            getHorizontalSize(
                                                              4.00,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                  margin: getMargin(
                                                    left: 25,
                                                    top: 16,
                                                    right: 25,
                                                  ),
                                                  child: RichText(
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: "lbl_56_00".tr,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .whiteA700,
                                                            fontSize:
                                                                getFontSize(
                                                              16,
                                                            ),
                                                            fontFamily:
                                                                'Noto Sans JP',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            letterSpacing: 0.30,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: "lbl_02_00".tr,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .whiteA700B2,
                                                            fontSize:
                                                                getFontSize(
                                                              16,
                                                            ),
                                                            fontFamily:
                                                                'Noto Sans JP',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            letterSpacing: 0.30,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    textAlign: TextAlign.start,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 24,
                                                  top: 24,
                                                  right: 24,
                                                ),
                                                child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgNotification,
                                                  height: getSize(
                                                    24.00,
                                                  ),
                                                  width: getSize(
                                                    24.00,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  left: 24,
                                                  top: 16,
                                                  right: 24,
                                                  bottom: 24,
                                                ),
                                                child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgMinimize,
                                                  height: getSize(
                                                    24.00,
                                                  ),
                                                  width: getSize(
                                                    24.00,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: getMargin(
                                            left: 76,
                                            top: 366,
                                            bottom: 366,
                                          ),
                                          color: ColorConstant.whiteA70033,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: ColorConstant.whiteA7001e,
                                              width: getHorizontalSize(
                                                1.00,
                                              ),
                                            ),
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder40,
                                          ),
                                          child: Container(
                                            height: getSize(
                                              80.00,
                                            ),
                                            width: getSize(
                                              80.00,
                                            ),
                                            decoration: AppDecoration
                                                .outlineWhiteA7001e
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder40,
                                            ),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                    padding: getPadding(
                                                      left: 20,
                                                      top: 21,
                                                      right: 20,
                                                      bottom: 19,
                                                    ),
                                                    child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgLocation24x24,
                                                      height: getSize(
                                                        40.00,
                                                      ),
                                                      width: getSize(
                                                        40.00,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 99,
                                        top: 24,
                                        bottom: 24,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CommonImageView(
                                            svgPath:
                                                ImageConstant.imgClose24x24,
                                            height: getSize(
                                              24.00,
                                            ),
                                            width: getSize(
                                              24.00,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 163,
                                              right: 5,
                                            ),
                                            child: Text(
                                              "msg_startup_business".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: AppStyle
                                                  .txtNotoSansJPBold16WhiteA700,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 123,
                                            ),
                                            child: CommonImageView(
                                              svgPath:
                                                  ImageConstant.imgComputer,
                                              height: getSize(
                                                24.00,
                                              ),
                                              width: getSize(
                                                24.00,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 16,
                                            ),
                                            child: CommonImageView(
                                              svgPath: ImageConstant.imgVolume1,
                                              height: getSize(
                                                24.00,
                                              ),
                                              width: getSize(
                                                24.00,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
