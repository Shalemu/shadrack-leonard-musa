import 'controller/edit_profile_controller.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_image.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_subtitle.dart';
import 'package:mauzoApp/widgets/app_bar/custom_app_bar.dart';
import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:mauzoApp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends GetWidget<EditProfileController> {
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
                    onTap: onTapArrowleft20),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_edit_profile".tr)),
            body: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                                      
                        children: [
                          Container(
                              height: getSize(110.00),
                              width: getSize(110.00),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: ColorConstant.whiteA700,
                                  width: 4
                                )
                              ),
                           
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(1000),
                                          child: CommonImageView(
                                              imagePath:
                                                  ImageConstant.imgImg86x80,
                                              height: getVerticalSize(100.00),
                                              width: getHorizontalSize(100.00)),
                                        )),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            height: getVerticalSize(28.00),
                                            width: getHorizontalSize(88.00),
                                          decoration: BoxDecoration(
                                            backgroundBlendMode: BlendMode.lighten,
                                      
                                            color: ColorConstant.gray200.withOpacity(0.5),
                                            borderRadius: BorderRadius.vertical(bottom:Radius.circular(100)
                                            
                                             )
                                          ),
                                             child: Align(
                                                alignment: Alignment.bottomCenter,
                                                child: Padding(
                                                    padding: getPadding(
                                                      
                                                        bottom: 10),
                                                    child:  InkWell(
          highlightColor: Colors.transparent,
                                                        onTap: () {
                                                          onTapImgCamera();
                                                        },
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgCamera14x14,
                                                            height:
                                                                getSize(14.00),
                                                            width:
                                                                getSize(14.00)))))))
                                  ])),
                          Align(
                              alignment: AlignmentDirectional.centerStart,
                              child: Padding(
                                  padding: getPadding(left: 24, top: 41, right: 24),
                                  child: Text("lbl_full_name2".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: AppStyle.txtNotoSansJPBold14Bluegray301))),
                          CustomTextFormField(
                              width: size.width,
                              focusNode: FocusNode(),
                              controller: controller.inputController,
                              hintText: "lbl_full_name2".tr,
                              margin: getMargin(left: 24, top: 14, right: 24),
                           
                              prefix: Container(
                                  margin: getMargin(
                                      left: 20, top: 18, right: 10, bottom: 18),
                                  child:
                                      CommonImageView(svgPath: ImageConstant.imgUser)),
                              prefixConstraints: BoxConstraints(
                                  minWidth: getSize(20.00), minHeight: getSize(20.00))),
                          Align(
                              alignment: AlignmentDirectional.centerStart,
                              child: Padding(
                                  padding: getPadding(left: 24, top: 24, right: 24),
                                  child: Text("lbl_email_address".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: AppStyle.txtNotoSansJPBold14Bluegray301))),
                          CustomTextFormField(
                              width: size.width,
                              focusNode: FocusNode(),
                              controller: controller.inputOneController,
                              hintText:  "lbl_email".tr,
                              margin: getMargin(left: 24, top: 15, right: 24),
                             
                              padding: TextFormFieldPadding.PaddingAll13,
                             
                              textInputAction: TextInputAction.done,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 20, top: 18, right: 10, bottom: 18),
                                  child:
                                      CommonImageView(svgPath: ImageConstant.imgMail)),
                              prefixConstraints: BoxConstraints(
                                  minWidth: getSize(20.00), minHeight: getSize(20.00))),
                          Padding(
                              padding: getPadding(left: 24, top: 25, right: 24),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("lbl_password".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: AppStyle
                                                .txtNotoSansJPBold14Bluegray301)),
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("lbl_change".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: AppStyle.txtNotoSansJPBold14primary))
                                  ])),
                             Obx(() => CustomTextFormField(
                                    width: size.width,
                                    focusNode: FocusNode(),
                                    controller: controller.inputTwoController,
                                    hintText: "lbl_password".tr,
                                    margin: getMargin(left: 24, top: 16, right: 24),
                                    textInputAction: TextInputAction.done,
                                    alignment: Alignment.center,
                                    prefix: Container(
                                        margin: getMargin(
                                            left: 20, top: 18, right: 10, bottom: 18),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgLock)),
                                    prefixConstraints: BoxConstraints(
                                        minWidth: getSize(20.00),
                                        minHeight: getSize(20.00)),
                                    suffix:  InkWell(
          highlightColor: Colors.transparent,
                                        onTap: () {
                                          controller.isShowPassword.value =
                                              !controller.isShowPassword.value;
                                        },
                                        child: Container(
                                            margin: getMargin(
                                                left: 30, right: 20, ),
                                            child: CommonImageView(
                                                imagePath: controller.isShowPassword.value
                                                    ? ImageConstant.visibilityOn
                                                    : ImageConstant.visibilityOff))),
                                    suffixConstraints: BoxConstraints(
                                        maxWidth: getHorizontalSize(70.00),
                                        maxHeight: getVerticalSize(20.00)),
                                   
                                    isObscureText: !controller.isShowPassword.value)),
                        ],
                      ),
                    ),
                  ),
                    
                 
                  CustomButton(
                      width: size.width,
                      text: "lbl_save_changes".tr,
                      margin:
                          getMargin(left: 24,  right: 24, bottom: 20),
                      variant: ButtonVariant.Outlineprimary_1,
                      shape: ButtonShape.RoundedBorder16,
                      fontStyle: ButtonFontStyle.NotoSansJPBold14primary)
                ]
                )
                )
                );
  }

  onTapImgCamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    //List<String?>? imageList = [];
//TODO: Permission - use imageList for using selected images
    await FileManager().showModelSheetForImage(getImages: (value) async {
      value = value;
    });
  }

  onTapArrowleft20() {
    Get.back();
  }
}
