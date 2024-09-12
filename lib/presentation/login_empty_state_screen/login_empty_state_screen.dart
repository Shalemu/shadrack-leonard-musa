import '../../widgets/spacing.dart';
import 'controller/login_empty_state_controller.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/core/utils/validation_functions.dart';
import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:mauzoApp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:mauzoApp/domain/googleauth/google_auth_helper.dart';


// ignore_for_file: must_be_immutable
class LoginEmptyStateScreen extends GetWidget<LoginEmptyStateController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: SingleChildScrollView(
              child: Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        VerticalSpace(height: 30),
                        Padding(
                            padding: getPadding(left: 24, top: 12, right: 24),
                            child: InkWell(
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
                                padding:
                                    getPadding(left: 24, top: 20, right: 24),
                                child: Text("lbl_sign_in".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: AppStyle.txtNotoSansJPBold24))),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding:
                                    getPadding(left: 24, top: 6, right: 24),
                                child: Text("lbl_welcome_back".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: AppStyle.txtNotoSansJPRegular16
                                        .copyWith(letterSpacing: 0.40)))),
                        CustomTextFormField(
                          width: size.width,
                          focusNode: FocusNode(),
                          controller: controller.inputController,
                          hintText: "Phone".tr,
                          margin: getMargin(left: 24, top: 51, right: 24),
                          alignment: Alignment.center,
                          keyboardType: TextInputType.phone,
                          prefix: Container(
                            margin: getMargin(
                                left: 20, top: 18, right: 10, bottom: 18),
                            child: CommonImageView(
                              svgPath: ImageConstant
                                  .imgMail, // This should match the constant defined in ImageConstant
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                              minWidth: getSize(20.00),
                              minHeight: getSize(20.00)),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter a valid number";
                            }
                            return null;
                          },
                        ),
                        Obx(() => CustomTextFormField(
                            width: size.width,
                            focusNode: FocusNode(),
                            controller: controller.inputOneController,
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
                            suffix: InkWell(
                                highlightColor: Colors.transparent,
                                onTap: () {
                                  controller.isShowPassword.value =
                                      !controller.isShowPassword.value;
                                },
                                child: Container(
                                    margin: getMargin(
                                      left: 30,
                                      right: 20,
                                    ),
                                    child: CommonImageView(
                                        imagePath: controller
                                                .isShowPassword.value
                                            ? ImageConstant.visibilityOn
                                            : ImageConstant.visibilityOff))),
                            suffixConstraints: BoxConstraints(
                                maxWidth: getHorizontalSize(70.00),
                                maxHeight: getVerticalSize(20.00)),
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "Please enter valid password";
                              }
                              return null;
                            },
                            isObscureText: !controller.isShowPassword.value)),
                        Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: Padding(
                                padding:
                                    getPadding(left: 24, top: 18, right: 24),
                                child: InkWell(
                                  highlightColor: Colors.transparent,
                                  onTap: () {
                                    Get.toNamed(AppRoutes.forgotPasswordScreen);
                                  },
                                  child: Text("msg_forgot_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: AppStyle.txtNotoSansJPBold14),
                                ))),
                          CustomButton(
                            width: size.width,
                            text: "lbl_sign_in".tr,
                            margin: getMargin(left: 24, top: 21, right: 24),
                            shape: ButtonShape.RoundedBorder16,
                            fontStyle: ButtonFontStyle.NotoSansJPMedium14, 
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                controller.onTapButton(context);
                              }
                            },
                            alignment: Alignment.center
                          ),

                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding:
                                    getPadding(left: 24, top: 25, right: 24),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: getHorizontalSize(139.00),
                                          margin: getMargin(top: 9, bottom: 10),
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment(
                                                      0.0034842889659598233,
                                                      -0.5002556563231337),
                                                  end: Alignment(
                                                      0.9999999443990735,
                                                      -0.5004710619341495),
                                                  colors: [
                                                ColorConstant.gray200,
                                                ColorConstant.gray20000
                                              ]))),
                                      Padding(
                                          padding: getPadding(left: 16),
                                          child: Text("lbl_or".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: AppStyle
                                                  .txtNotoSansJPRegular14)),
                                      Container(
                                          height: getVerticalSize(1.00),
                                          width: getHorizontalSize(139.00),
                                          margin: getMargin(
                                              left: 16, top: 9, bottom: 10),
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment(
                                                      0.0034842889659598233,
                                                      -0.5002556563231337),
                                                  end: Alignment(
                                                      0.9999999443990735,
                                                      -0.5004710619341495),
                                                  colors: [
                                                ColorConstant.gray200,
                                                ColorConstant.gray20000
                                              ])))
                                    ]))),
                        Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                                onTap: () {
                                  onTapButton();
                                },
                                child: Container(
                                    margin:
                                        getMargin(left: 24, top: 22, right: 24),
                                    decoration: AppDecoration.outlineGray200
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder16),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  left: 20,
                                                  top: 16,
                                                  bottom: 16),
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgGoogle,
                                                  height: getSize(24.00),
                                                  width: getSize(24.00))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 55,
                                                  top: 19,
                                                  bottom: 15),
                                              child: Text(
                                                  "msg_sign_in_with_google".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: AppStyle
                                                      .txtNotoSansJPMedium14Gray902))
                                        ])))),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                margin: getMargin(left: 24, top: 12, right: 24),
                                decoration: AppDecoration.outlineGray200
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                          padding: getPadding(
                                              left: 20, top: 16, bottom: 16),
                                          child: CommonImageView(
                                              svgPath: ImageConstant
                                                  .imgAntdesignappl,
                                              height: getSize(24.00),
                                              width: getSize(24.00))),
                                      Padding(
                                          padding: getPadding(
                                              left: 59, top: 19, bottom: 15),
                                          child: Text(
                                              "msg_sign_in_with_apple".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: AppStyle
                                                  .txtNotoSansJPMedium14Gray902))
                                    ]))),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                width: getHorizontalSize(261.00),
                                margin: getMargin(
                                    left: 24, top: 24, right: 24, bottom: 5),
                                child: InkWell(
                                  highlightColor: Colors.transparent,
                                  onTap: () {
                                    Get.toNamed(
                                        AppRoutes.signUpEmptyStateScreen);
                                  },
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_already_have_account".tr,
                                            style: TextStyle(
                                                color:
                                                    ColorConstant.bluegray301,
                                                fontSize: getFontSize(12),
                                                fontFamily: 'Noto Sans JP',
                                                fontWeight: FontWeight.w500)),
                                        TextSpan(
                                            text: "msg_create_an_account".tr,
                                            style: TextStyle(
                                                color: ColorConstant.primary,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Noto Sans JP',
                                                fontWeight: FontWeight.w600)),
                                      ]),
                                      textAlign: TextAlign.center),
                                ))),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                width: getHorizontalSize(261.00),
                                margin: getMargin(
                                    left: 24, top: 20, right: 24, bottom: 10),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "msg_by_sign_in_i_accept2".tr,
                                          style: TextStyle(
                                              color: ColorConstant.bluegray301,
                                              fontSize: getFontSize(10),
                                              fontFamily: 'Noto Sans JP',
                                              fontWeight: FontWeight.w400)),
                                      TextSpan(
                                          text: "msg_terms_of_service".tr,
                                          style: TextStyle(
                                              color: ColorConstant.primary,
                                              fontSize: getFontSize(10),
                                              fontFamily: 'Noto Sans JP',
                                              fontWeight: FontWeight.w500)),
                                      TextSpan(
                                          text: "lbl_and".tr,
                                          style: TextStyle(
                                              color: ColorConstant.bluegray301,
                                              fontSize: getFontSize(10),
                                              fontFamily: 'Noto Sans JP',
                                              fontWeight: FontWeight.w400)),
                                      TextSpan(
                                          text: "msg_community_guidelines".tr,
                                          style: TextStyle(
                                              color: ColorConstant.primary,
                                              fontSize: getFontSize(10),
                                              fontFamily: 'Noto Sans JP',
                                              fontWeight: FontWeight.w500)),
                                      TextSpan(
                                          text: "lbl_and_have_read".tr,
                                          style: TextStyle(
                                              color: ColorConstant.bluegray301,
                                              fontSize: getFontSize(10),
                                              fontFamily: 'Noto Sans JP',
                                              fontWeight: FontWeight.w400)),
                                      TextSpan(
                                          text: "lbl_privacy_policy".tr,
                                          style: TextStyle(
                                              color: ColorConstant.primary,
                                              fontSize: getFontSize(10),
                                              fontFamily: 'Noto Sans JP',
                                              fontWeight: FontWeight.w500))
                                    ]),
                                    textAlign: TextAlign.center))),
                      ])),
            )));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapButton() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
