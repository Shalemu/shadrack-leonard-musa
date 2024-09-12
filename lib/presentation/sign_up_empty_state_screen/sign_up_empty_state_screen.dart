import '../../widgets/spacing.dart';
import 'controller/sign_up_empty_state_controller.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/core/utils/validation_functions.dart';
import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:mauzoApp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:mauzoApp/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignUpEmptyStateScreen extends GetWidget<SignUpEmptyStateController> {
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
                            child:  InkWell(
          highlightColor: Colors.transparent,
                                onTap: () {
                                  onTapImgArrowleft();
                                },
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgArrowleft,
                                    height: getSize(32.00),
                                    width: getSize(32.00)))),
                        Padding(
                            padding: getPadding(left: 24, top: 29, right: 24),
                            child: Text("msg_create_an_account".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: AppStyle.txtNotoSansJPBold24)),
                        CustomTextFormField(
                            width: size.width,
                            focusNode: FocusNode(),
                            controller: controller.inputController,
                            hintText: "lbl_your_name".tr,
                            margin: getMargin(left: 23, top: 31, right: 23),
                            alignment: Alignment.center,
                            prefix: Container(
                                margin: getMargin(
                                    left: 20, top: 18, right: 10, bottom: 18),
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgUser)),
                            prefixConstraints: BoxConstraints(
                                minWidth: getSize(20.00),
                                minHeight: getSize(20.00)),
                            validator: (value) {
                              if (!isText(value)) {
                                return "Please enter valid text";
                              }
                              return null;
                            }),
                        CustomTextFormField(
                            width: size.width,
                            focusNode: FocusNode(),
                            controller: controller.inputOneController,
                            hintText: "lbl_email".tr,
                            margin: getMargin(left: 23, top: 16, right: 23),
                            alignment: Alignment.center,
                            prefix: Container(
                                margin: getMargin(
                                    left: 20, top: 18, right: 10, bottom: 18),
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgMail)),
                            prefixConstraints: BoxConstraints(
                                minWidth: getSize(20.00),
                                minHeight: getSize(20.00)),
                            validator: (value) {
                              if (value == null ||
                                  (!isValidEmail(value, isRequired: true))) {
                                return "Please enter valid email";
                              }
                              return null;
                            }),
                        Obx(() => CustomTextFormField(
                            width: 327,
                            focusNode: FocusNode(),
                            controller: controller.inputTwoController,
                            hintText: "lbl_password".tr,
                            margin: getMargin(left: 23, top: 16, right: 23),
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
                                    left: 10, right: 20, ),
                                child: CommonImageView(
                                    imagePath: controller.isShowPassword.value
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
                        CustomButton(
                            width: size.width,
                            text: "lbl_sign_up".tr,
                            margin: getMargin(left: 23, top: 32, right: 23),
                            shape: ButtonShape.RoundedBorder16,
                            alignment: Alignment.center,
                            onTap: (){
                              Get.offNamed(AppRoutes.enterVerificationCodeScreen);
                            },
                            ),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: getPadding(left: 23, top: 25, right: 23),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                        getMargin(left: 23, top: 22, right: 23),
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
                                                  left: 20, top: 16, bottom: 16),
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgGoogle,
                                                  height: getSize(24.00),
                                                  width: getSize(24.00))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 51, top: 19, bottom: 15),
                                              child: Text(
                                                  "msg_sign_up_with_google".tr,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: AppStyle
                                                      .txtNotoSansJPMedium14Gray902))
                                        ])))),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                margin: getMargin(left: 23, top: 12, right: 23),
                                decoration: AppDecoration.outlineGray200.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder16),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                          padding: getPadding(
                                              left: 20, top: 16, bottom: 16),
                                          child: CommonImageView(
                                              svgPath:
                                                  ImageConstant.imgAntdesignappl,
                                              height: getSize(24.00),
                                              width: getSize(24.00))),
                                      Padding(
                                          padding: getPadding(
                                              left: 56, top: 19, bottom: 15),
                                          child: Text("msg_sign_up_with_apple".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: AppStyle
                                                  .txtNotoSansJPMedium14Gray902))
                                    ]))),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                width: getHorizontalSize(265.00),
                                margin: getMargin(
                                    left: 23, top: 74, right: 23, bottom: 5),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "msg_by_sign_up_i_accept2".tr,
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
                                    textAlign: TextAlign.center)))
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
