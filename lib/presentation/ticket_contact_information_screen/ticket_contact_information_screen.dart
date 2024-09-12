import 'controller/ticket_contact_information_controller.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/core/utils/validation_functions.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_image.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_subtitle.dart';
import 'package:mauzoApp/widgets/app_bar/custom_app_bar.dart';
import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:mauzoApp/widgets/custom_checkbox.dart';
import 'package:mauzoApp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class TicketContactInformationScreen
    extends GetWidget<TicketContactInformationController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                    onTap: onTapArrowleft5),
                centerTitle: true,
                title: AppbarSubtitle(text: "msg_contact_information".tr)),
            body: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                             mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(337.00),
                                  width: getHorizontalSize(329.00),
                                  margin: getMargin(left: 24, top: 16, right: 22),
                                  child: Stack(alignment: Alignment.center, children: [
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Container(
                                            height: getVerticalSize(313.00),
                                            width: getHorizontalSize(310.00),
                                            margin: getMargin(left: 10, top: 10),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray9000f,
                                                borderRadius: BorderRadius.circular(
                                                    getHorizontalSize(12.00))))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            margin: getMargin(right: 2, bottom: 2),
                                            decoration: AppDecoration.fillWhiteA700
                                                .copyWith(
                                                    borderRadius: BorderRadiusStyle
                                                        .roundedBorder20),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 20, top: 25, right: 20),
                                                      child: Text("lbl_full_name".tr,
                                                          overflow:
                                                              TextOverflow.ellipsis,
                                                          textAlign: TextAlign.start,
                                                          style: AppStyle
                                                              .txtNotoSansJPMedium14Bluegray301)),
                                                  CustomTextFormField(
                                                      width: size.width,
                                                      focusNode: FocusNode(),
                                                      controller:
                                                          controller.inputController,
                                                           fontStyle: TextFormFieldFontStyle.NotoSansJPMedium14Gray902,
                                                      hintText:
                                                          "lbl_full_name2".tr,
                                                      margin: getMargin(
                                                          left: 20, top: 6, right: 20),
                                                    
                                                      alignment: Alignment.center),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 20, top: 17, right: 20),
                                                      child: Text(
                                                          "lbl_email_address".tr,
                                                          overflow:
                                                              TextOverflow.ellipsis,
                                                          textAlign: TextAlign.start,
                                                          style: AppStyle
                                                              .txtNotoSansJPMedium14Bluegray301)),
                                                  CustomTextFormField(
                                                      width: size.width,
                                                      focusNode: FocusNode(),
                                                      controller:
                                                          controller.emailController,
                                                           fontStyle: TextFormFieldFontStyle.NotoSansJPMedium14Gray902,
                                                      hintText:
                                                          "lbl_email_address"
                                                              .tr,
                                                      margin: getMargin(
                                                          left: 20, top: 6, right: 20),
                                                    
                                                      alignment: Alignment.center,
                                                      prefix: Container(
                                                          margin: getMargin(
                                                              left: 20,
                                                              top: 18,
                                                              right: 10,
                                                              bottom: 18),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgMail)),
                                                      prefixConstraints: BoxConstraints(
                                                          minWidth: getSize(20.00),
                                                          minHeight: getSize(20.00)),
                                                      validator: (value) {
                                                        if (value == null ||
                                                            (!isValidEmail(value,
                                                                isRequired: true))) {
                                                          return "Please enter valid email";
                                                        }
                                                        return null;
                                                      }),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 20, top: 17, right: 20),
                                                      child: Text("lbl_mobile_phone".tr,
                                                          overflow:
                                                              TextOverflow.ellipsis,
                                                          textAlign: TextAlign.start,
                                                          style: AppStyle
                                                              .txtNotoSansJPMedium14Bluegray301)),
                                                  CustomTextFormField(
                                                      width: size.width,
                                                      focusNode: FocusNode(),
                                                      controller:
                                                          controller.inputOneController,
                                                      hintText:
                                                          "lbl_mobile_phone".tr,
                                                      margin: getMargin(
                                                          left: 20,
                                                          top: 6,
                                                          right: 20,
                                                          bottom: 24),
                                                          fontStyle: TextFormFieldFontStyle.NotoSansJPMedium14Gray902,
                                                    
                                                      textInputAction:
                                                          TextInputAction.done,
                                                      alignment: Alignment.center,
                                                      prefix: Container(
                                                          margin: getMargin(
                                                              left: 20,
                                                              top: 18,
                                                              right: 10,
                                                              bottom: 18),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgCall)),
                                                      prefixConstraints: BoxConstraints(
                                                          minWidth: getSize(20.00),
                                                          minHeight: getSize(20.00)))
                                                ])))
                                  ])),
                              Obx(() => CustomCheckbox(
                                  text: "msg_keep_me_updated".tr,
                                  iconSize: 16,
                                  value: controller.checkbox.value,
                                  padding: getPadding(left: 24, top: 22, right: 24),
                                  onChange: (value) {
                                    controller.checkbox.value = value;
                                  })),
                              Container(
                                  width: getHorizontalSize(317.00),
                                  margin: getMargin(left: 24, top: 20, right: 24),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_by_clicking_register2".tr,
                                            style: TextStyle(
                                                color: ColorConstant.bluegray301,
                                                fontSize: getFontSize(12),
                                                fontFamily: 'Noto Sans JP',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "msg_terms_of_service".tr,
                                            style: TextStyle(
                                                color: ColorConstant.gray902,
                                                fontSize: getFontSize(12),
                                                fontFamily: 'Noto Sans JP',
                                                fontWeight: FontWeight.w500)),
                                        TextSpan(
                                            text: "lbl_and_have_read".tr,
                                            style: TextStyle(
                                                color: ColorConstant.bluegray301,
                                                fontSize: getFontSize(12),
                                                fontFamily: 'Noto Sans JP',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "lbl_privacy_policy2".tr,
                                            style: TextStyle(
                                                color: ColorConstant.gray902,
                                                fontSize: getFontSize(12),
                                                fontFamily: 'Noto Sans JP',
                                                fontWeight: FontWeight.w500)),
                                        TextSpan(
                                            text: "msg_i_agree_that_evenline".tr,
                                            style: TextStyle(
                                                color: ColorConstant.bluegray301,
                                                fontSize: getFontSize(12),
                                                fontFamily: 'Noto Sans JP',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "msg_share_my_information".tr,
                                            style: TextStyle(
                                                color: ColorConstant.gray902,
                                                fontSize: getFontSize(12),
                                                fontFamily: 'Noto Sans JP',
                                                fontWeight: FontWeight.w500)),
                                        TextSpan(
                                            text: "msg_with_the_event_organizer".tr,
                                            style: TextStyle(
                                                color: ColorConstant.bluegray301,
                                                fontSize: getFontSize(12),
                                                fontFamily: 'Noto Sans JP',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "lbl".tr,
                                            style: TextStyle(
                                                color: ColorConstant.bluegray301,
                                                fontSize: getFontSize(12),
                                                fontFamily: 'Noto Sans JP',
                                                fontWeight: FontWeight.w400))
                                      ]),
                                      textAlign: TextAlign.start)),
                            ],
                          ),
                        ),
                      ),
                    
                    
                      Container(
                          margin: getMargin(top: 10, bottom: 20),
                          decoration: AppDecoration.outlineGray90005,
                          child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 23, top: 14, bottom: 11),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  left: 1, right: 10),
                                              child: Text("lbl_75_00".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign:
                                                      TextAlign.start,
                                                  style: AppStyle
                                                      .txtNotoSansJPBold16)),
                                          Padding(
                                              padding: getPadding(top: 4),
                                              child: Text(
                                                  "msg_you_re_going_1".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign:
                                                      TextAlign.start,
                                                  style: AppStyle
                                                      .txtNotoSansJPRegular12))
                                        ])),
                                CustomButton(
                                    width: 148,
                                    text: "lbl_register".tr,
                                    margin: getMargin(
                                        top: 8, right: 24, bottom: 8),
                                        onTap: (){
                                          Get.toNamed(AppRoutes.ticketDetailOrderScreen);
                                        },
                                    shape: ButtonShape.RoundedBorder16)
                              ]))
                    ]))));
  }

  onTapArrowleft5() {
    Get.back();
  }
}
