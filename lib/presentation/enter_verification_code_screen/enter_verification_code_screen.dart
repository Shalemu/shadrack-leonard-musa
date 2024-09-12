import 'package:mauzoApp/widgets/spacing.dart';

import 'controller/enter_verification_code_controller.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class EnterVerificationCodeScreen
    extends GetWidget<EnterVerificationCodeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  VerticalSpace(height: 30),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: AlignmentDirectional.centerStart,
                              child: Padding(
                                  padding:
                                      getPadding(left: 24, top: 12, right: 24),
                                  child: InkWell(
                                      highlightColor: Colors.transparent,
                                      onTap: () {
                                        onTapImgArrowleft();
                                      },
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgArrowleft,
                                          height: getSize(32.00),
                                          width: getSize(32.00))))),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding:
                                      getPadding(left: 24, top: 28, right: 24),
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgIllustration,
                                      height: getSize(152.00),
                                      width: getSize(152.00)))),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding:
                                      getPadding(left: 24, top: 40, right: 24),
                                  child: Text("msg_verification_code".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: AppStyle.txtNotoSansJPBold24))),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: getHorizontalSize(296.00),
                                  margin:
                                      getMargin(left: 24, top: 13, right: 24),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_we_have_to_send2".tr,
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.bluegray301,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Noto Sans JP',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "msg_rose_mail_com".tr,
                                            style: TextStyle(
                                                color: ColorConstant.gray902,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Noto Sans JP',
                                                fontWeight: FontWeight.w500))
                                      ]),
                                      textAlign: TextAlign.center))),
                          Padding(
                              padding: getPadding(left: 24, top: 33, right: 24),
                              child: Container(
                                  width: getHorizontalSize(327.00),
                                  child: Obx(() => PinCodeTextField(
                                      appContext: context,
                                      controller:
                                          controller.otpController.value,
                                      length: 5,
                                      obscureText: false,
                                      obscuringCharacter: '*',
                                      keyboardType: TextInputType.number,
                                      autoDismissKeyboard: true,
                                      enableActiveFill: true,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                      onChanged: (value) {},
                                      textStyle: TextStyle(
                                          color: ColorConstant.gray902,
                                          fontSize: getFontSize(24),
                                          fontFamily: 'Noto Sans JP',
                                          fontWeight: FontWeight.w700),
                                      pinTheme: PinTheme(
                                          fieldHeight: getHorizontalSize(56.00),
                                          fieldWidth: getHorizontalSize(56.00),
                                          shape: PinCodeFieldShape.box,
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(12.00)),
                                          selectedFillColor:
                                              ColorConstant.whiteA700,
                                          activeFillColor: Color(0xFFF3F3F3),
                                          inactiveFillColor: Color(0xFFF3F3F3),
                                          inactiveColor:
                                              ColorConstant.fromHex("#F3F3F3"),
                                          selectedColor: ColorConstant.primary,
                                          activeColor: ColorConstant.fromHex(
                                              "#F3F3F3")))))),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding:
                                      getPadding(left: 24, top: 25, right: 24),
                                  child: Text("lbl_resend_code".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: AppStyle
                                          .txtNotoSansJPBold14primary))),
                        ],
                      ),
                    ),
                  ),
                  CustomButton(
                      width: size.width,
                      text: "lbl_verify".tr,
                      margin: getMargin(left: 24, right: 24, bottom: 20),
                      onTap: () {
                        Get.toNamed(AppRoutes.chooseLocationScreen);
                      },
                      shape: ButtonShape.RoundedBorder16,
                      alignment: Alignment.center)
                ])));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
