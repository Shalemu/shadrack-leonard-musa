import '../../widgets/spacing.dart';
import 'controller/enter_new_password_controller.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/core/utils/validation_functions.dart';
import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:mauzoApp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class EnterNewPasswordScreen extends GetWidget<EnterNewPasswordController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Column(
                           mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
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
                                padding: getPadding(left: 24, top: 39, right: 24),
                                child: Text("msg_reset_your_password".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: AppStyle.txtNotoSansJPBold24)),
                            Padding(
                                padding: getPadding(left: 24, top: 7, right: 24),
                                child: Text("msg_please_enter_a_new".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: AppStyle.txtNotoSansJPRegular14)),
                            
                                          
                            Obx(() => CustomTextFormField(
                                width: size.width,
                                focusNode: FocusNode(),
                                controller: controller.inputController,
                                hintText: "msg_new_password".tr,
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
                               
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidPassword(value, isRequired: true))) {
                                    return "Please enter valid password";
                                  }
                                  return null;
                                },
                                isObscureText: !controller.isShowPassword.value)),
                                           
                            Obx(() => CustomTextFormField(
                                width: size.width,
                                focusNode: FocusNode(),
                                controller: controller.inputController,
                                hintText: "msg_confirm_password".tr,
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
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidPassword(value, isRequired: true))) {
                                    return "Please enter valid password";
                                  }
                                  return null;
                                },
                                isObscureText: !controller.isShowPassword.value)),
                          ],
                        ),
                      ),
                     
                     
                      CustomButton(
                          width: size.width,
                          text: "msg_create_new_password".tr,
                          margin: getMargin(
                              left: 24, right: 24, bottom: 20),
                          shape: ButtonShape.RoundedBorder16,
                          alignment: Alignment.center,
                          onTap: (){
                            Get.toNamed(AppRoutes.newPasswordSuccessScreen);
                          },
                          )
                    
                    
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
