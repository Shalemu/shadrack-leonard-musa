import 'controller/privacy_policy_controller.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_circleimage.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_image.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_subtitle.dart';
import 'package:mauzoApp/widgets/app_bar/custom_app_bar.dart';
import 'package:mauzoApp/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends GetWidget<PrivacyPolicyController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          leadingWidth: 48,
          leading: AppbarImage(
            height: getSize(
              24.00,
            ),
            width: getSize(
              24.00,
            ),
            svgPath: ImageConstant.imgGrid24x24,
            margin:EdgeInsets.only(
              left: 24,
              top: 16,
              bottom: 16,
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle(
            text: "lbl_privacy_policy2".tr,
          ),
          actions: [
            Container(
              margin: getMargin(
                left: 24,
                top: 8,
                right: 24,
                bottom: 8,
              ),
              decoration: AppDecoration.fillWhiteA700.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppbarCircleimage(
                    imagePath: ImageConstant.imgImg86x80,
                  ),
                ],
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: getPadding(
              top: 5,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: getVerticalSize(
                      1.00,
                    ),
                    width: size.width,
                    decoration: BoxDecoration(
                      color: ColorConstant.gray101,
                    ),
                  ),
                ),
                CustomSearchView(
                  width: 327,
                  focusNode: FocusNode(),
                  controller: controller.searchController,
                  hintText: "lbl_search2".tr,
                  margin: getMargin(
                    left: 24,
                    top: 23,
                    right: 24,
                  ),
                  prefix: Container(
                    margin: getMargin(
                      left: 16,
                      top: 18,
                      right: 291,
                      bottom: 18,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgSearch,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    minWidth: getSize(
                      20.00,
                    ),
                    minHeight: getSize(
                      20.00,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 17,
                      right: 24,
                    ),
                    child: Text(
                      "msg_last_updated_march".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: AppStyle.txtNotoSansJPMedium12Bluegray301,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: getMargin(
                    left: 24,
                    top: 22,
                    right: 24,
                  ),
                  decoration: AppDecoration.fillGray100.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 19,
                          top: 16,
                          right: 19,
                        ),
                        child: Text(
                          "lbl_overview".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: AppStyle.txtNotoSansJPBold14,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: getHorizontalSize(
                            291.00,
                          ),
                          margin: getMargin(
                            left: 16,
                            top: 11,
                            right: 16,
                          ),
                          child: Text(
                            "msg_we_are_a_ticketing".tr,
                            maxLines: null,
                            textAlign: TextAlign.start,
                            style: AppStyle.txtNotoSansJPRegular12Gray600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                          top: 19,
                          right: 16,
                        ),
                        child: Text(
                          "msg_2_our_privacy_statement".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: AppStyle.txtNotoSansJPBold14,
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          279.00,
                        ),
                        margin: getMargin(
                          left: 16,
                          top: 9,
                          right: 16,
                        ),
                        child: Text(
                          "msg_this_privacy_policy".tr,
                          maxLines: null,
                          textAlign: TextAlign.start,
                          style: AppStyle.txtNotoSansJPRegular12Gray600,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: getHorizontalSize(
                            287.00,
                          ),
                          margin: getMargin(
                            left: 16,
                            top: 13,
                            right: 16,
                          ),
                          child: Text(
                            "msg_this_policy_also".tr,
                            maxLines: null,
                            textAlign: TextAlign.start,
                            style: AppStyle.txtNotoSansJPRegular12Gray600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 16,
                          top: 20,
                          right: 16,
                        ),
                        child: Text(
                          "msg_3_personal_date".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: AppStyle.txtNotoSansJPBold14,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: getHorizontalSize(
                            293.00,
                          ),
                          margin: getMargin(
                            left: 16,
                            top: 11,
                            right: 16,
                          ),
                          child: Text(
                            "msg_when_you_use_or".tr,
                            maxLines: null,
                            textAlign: TextAlign.start,
                            style: AppStyle.txtNotoSansJPRegular12Gray600,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: getHorizontalSize(
                            292.00,
                          ),
                          margin: getMargin(
                            left: 16,
                            top: 13,
                            right: 16,
                            bottom: 5,
                          ),
                          child: Text(
                            "msg_sometimes_this_will".tr,
                            maxLines: null,
                            textAlign: TextAlign.start,
                            style: AppStyle.txtNotoSansJPRegular12Gray600,
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
      ),
    );
  }
}
