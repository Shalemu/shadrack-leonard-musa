import '../../widgets/custom_switch.dart';
import 'controller/link_account_controller.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_image.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_subtitle.dart';
import 'package:mauzoApp/widgets/app_bar/custom_app_bar.dart';
import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LinkAccountScreen extends GetWidget<LinkAccountController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: double.infinity,
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL30),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomAppBar(
                                    height: getVerticalSize(56.00),
                                    leadingWidth: 56,
                                    leading: AppbarImage(
                                        height: getSize(32.00),
                                        width: getSize(32.00),
                                        svgPath: ImageConstant.imgArrowleft,
                                        margin:EdgeInsets.only(left: 24),
                                        onTap: onTapArrowleft21),
                                    centerTitle: true,
                                    title: AppbarSubtitle(
                                        text: "lbl_link_account".tr)),
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: getMargin(
                                        left: 111, top: 36, right: 111),
                                    color: ColorConstant.whiteA700,
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: ColorConstant.whiteA700,
                                            width: getHorizontalSize(4.00)),
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder44),
                                    child: Container(
                                        height: getSize(88.00),
                                        width: getSize(88.00),
                                        decoration: AppDecoration
                                            .outlineWhiteA7001
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder44),
                                        child: Stack(children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 4,
                                                      top: 2,
                                                      right: 4),
                                                  child: CommonImageView(
                                                      imagePath: ImageConstant
                                                          .imgImg86x80,
                                                      height: getVerticalSize(
                                                          86.00),
                                                      width: getHorizontalSize(
                                                          80.00))))
                                        ]))),
                                Padding(
                                    padding: getPadding(
                                        left: 111, top: 18, right: 111),
                                    child: Text("lbl_rose_merry".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: AppStyle.txtNotoSansJPBold18)),
                                Padding(
                                    padding: getPadding(
                                      
                                        top: 2,
                                        
                                        bottom: 38),
                                    child: Text(
                                        "msg_michellabarkin_gmail_com".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: AppStyle.txtNotoSansJPRegular12))
                              ]))),
                  Padding(
                      padding: getPadding(left: 24, top: 24, right: 24),
                      child:Container(
     
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              left: 16,
              top: 16,
              bottom: 16,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                CommonImageView(
                  imagePath: ImageConstant.google,
                  height: getVerticalSize(48),
                  width: getHorizontalSize(48),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 16,
                    bottom: 10,
                  ),
                  child: Text(
                    "msg_login_with_google".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: AppStyle.txtNotoSansJPBold14,
                  ),
                ),
              ],
            ),
          ),
          Obx(
            () => CustomSwitch(
              margin: getMargin(
              
                top: 28,
                right: 16,
                bottom: 28,
              ),
              value: controller.isSelectedGoogleSwitch.value,
              onChanged: (value) {
                controller.isSelectedGoogleSwitch.value = value;
              },
            ),
          ),
        ],
      ),
    ),
    
                          
                          ),
                 
                  Padding(
                      padding: getPadding(left: 24, top: 16, right: 24),
                      child:Container(
     
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              left: 16,
              top: 16,
              bottom: 16,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                CommonImageView(
                  imagePath: ImageConstant.apple,
                  height: getVerticalSize(48),
                  width: getHorizontalSize(48),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 16,
                    bottom: 10,
                  ),
                  child: Text(
                    "msg_login_with_apple".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: AppStyle.txtNotoSansJPBold14,
                  ),
                ),
              ],
            ),
          ),
          Obx(
            () => CustomSwitch(
              margin: getMargin(
               
                top: 28,
                right: 16,
                bottom: 28,
              ),
              value: controller.isSelectedAppleSwitch.value,
              onChanged: (value) {
                controller.isSelectedAppleSwitch.value = value;
              },
            ),
          ),
        ],
      ),
    ),
    
                          
                          ),
                 
                  Padding(
                      padding: getPadding(left: 24, top: 16, right: 24),
                      child:Container(
    
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              left: 16,
              top: 16,
              bottom: 16,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                CommonImageView(
                  imagePath: ImageConstant.twitter,
                  height: getVerticalSize(48),
                  width: getHorizontalSize(48),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 16,
                    bottom: 10,
                  ),
                  child: Text(
                    "msg_login_with_twitter".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: AppStyle.txtNotoSansJPBold14,
                  ),
                ),
              ],
            ),
          ),
          Obx(
            () => CustomSwitch(
              margin: getMargin(
              
                top: 28,
                right: 16,
                bottom: 28,
              ),
              value: controller.isSelectedTwitterSwitch.value,
              onChanged: (value) {
                controller.isSelectedTwitterSwitch.value = value;
              },
            ),
          ),
        ],
      ),
    ),
    
                          
                          ),
                 
                 
                 
                  CustomButton(
                      width: size.width,
                      text: "lbl_save_changes".tr,
                      margin:
                          getMargin(left: 24, top: 101, right: 24, bottom: 5),
                          onTap: (){
                            Get.back();
                          },
                      shape: ButtonShape.RoundedBorder16)
                ])));
  }

  onTapArrowleft21() {
    Get.back();
  }
}
