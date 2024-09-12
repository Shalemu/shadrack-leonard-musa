import '../../widgets/spacing.dart';
import 'controller/forgot_password_controller.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:mauzoApp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                   VerticalSpace(height: 30),
                  Padding(
                      padding: getPadding(left: 24, top: 12, right: 24),
                      child:  InkWell(
          highlightColor: Colors.transparent,
                          onTap: () {
                            onTapImgArrowleft();
                          },
                          child: CommonImageView(
                              svgPath: ImageConstant.imgArrowleft,
                              height: getSize(32.00),
                              width: getSize(32.00)))),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(left: 24, top: 28, right: 24),
                          child: CommonImageView(
                              svgPath: ImageConstant.imgIllustrationGray200,
                              height: getSize(152.00),
                              width: getSize(152.00)))),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(left: 24, top: 43, right: 24),
                          child: Text("lbl_forgot_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: AppStyle.txtNotoSansJPBold24))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          width: getHorizontalSize(270.00),
                          margin: getMargin(left: 24, top: 11, right: 24),
                          child: Text("msg_please_enter_the".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtNotoSansJPRegular14))),
                  CustomTextFormField(
                      width: size.width,
                      focusNode: FocusNode(),
                      controller: controller.inputController,
                      hintText: "lbl_email".tr,
                      margin: getMargin(left: 24, top: 32, right: 24),
                      variant: TextFormFieldVariant.Outlineprimary,
                      fontStyle: TextFormFieldFontStyle.NotoSansJPMedium14,
                      textInputAction: TextInputAction.done,
                      alignment: Alignment.center,
                      prefix: Container(
                          margin: getMargin(
                              left: 20, top: 18, right: 10, bottom: 18),
                          child: CommonImageView(
                              svgPath: ImageConstant.imgMail20x20)),
                      prefixConstraints: BoxConstraints(
                          minWidth: getSize(20.00), minHeight: getSize(20.00))),
                  CustomButton(
                      width: size.width,
                      text: "lbl_send_me_email".tr,
                      margin:
                          getMargin(left: 24, top: 224, right: 24, bottom: 5),
                      shape: ButtonShape.RoundedBorder16,
                      alignment: Alignment.center,
                      onTap: (){
                        Get.toNamed(AppRoutes.enterNewPasswordScreen);
                      },
                      )
                ])));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
