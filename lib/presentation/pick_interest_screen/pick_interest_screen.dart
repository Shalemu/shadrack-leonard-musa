import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';

import 'controller/pick_interest_controller.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_image.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:mauzoApp/widgets/app_bar/custom_app_bar.dart';
import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:mauzoApp/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class PickInterestScreen extends GetWidget<PickInterestController> {
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
                    onTap: onTapArrowleft1),
                actions: [
                  AppbarSubtitle1(
                      text: "lbl_skip_for_now".tr,
                      margin:
                          getMargin(left: 24, top: 19, right: 24, bottom: 15))
                ]),
            body: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(left: 24, top: 25, right: 24),
                                child: Text("lbl_choose_interest".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: AppStyle.txtNotoSansJPBold24))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: getHorizontalSize(294.00),
                                margin: getMargin(left: 24, top: 13, right: 24),
                                child: Text("msg_pick_your_favorites".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.start,
                                    style: AppStyle.txtNotoSansJPRegular14))),
                        CustomSearchView(
                            width: size.width,
                            focusNode: FocusNode(),
                            controller: controller.searchController,
                            hintText: "lbl_search".tr,
                            margin: getMargin(left: 24, top: 27, right: 24),
                            variant: SearchViewVariant.FillBluegray50,
                            alignment: Alignment.center,
                            prefix: Container(
                                margin: getMargin(
                                    left: 16, top: 18, right: 10, bottom: 18),
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgSearch)),
                            prefixConstraints: BoxConstraints(
                                minWidth: getSize(20.00), minHeight: getSize(20.00))),
                        GetBuilder<PickInterestController>(builder: (getController) {
                          return ChipsChoice<String>.multiple(
                            value: controller.tags,
                            onChanged: (val) => getController.onChipTap(val),
                            choiceStyle: C2ChoiceStyle(
                              color: ColorConstant.gray902,
                              labelStyle: AppStyle.txtNotoSansJPRegular14Gray902,
                              borderRadius:BorderRadiusStyle
                                                      .roundedBorder13,
                                                      backgroundColor: Colors.transparent,
                                                      borderColor: ColorConstant.gray200
                            ),
                            choiceActiveStyle: C2ChoiceStyle( color: ColorConstant.primary,
                              labelStyle: AppStyle.txtNotoSansJPMedium14primary,
                              borderRadius:BorderRadiusStyle
                                                      .roundedBorder13,
                                                      backgroundColor: Colors.transparent,
                                                      borderColor: ColorConstant.primary),
                            wrapped: true,
                            wrapCrossAlignment: WrapCrossAlignment.center,
                  
                           
                            choiceItems: C2Choice.listFrom<String, String>(
                              source: controller.options,
                              value: (i, v) => v,
                              label: (i, v) => v,
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                 
                 
                 
                  CustomButton(
                      width: size.width,
                      text: "lbl_finish".tr,
                      margin:
                          getMargin(left: 24, right: 24, bottom: 20),
                      shape: ButtonShape.RoundedBorder16,
                      alignment: Alignment.center,
                      onTap: (){
                        Get.offNamedUntil(AppRoutes.homeVtwoContainerScreen, (route) => false);
                      },
                      )
                ])));
  }

  onTapArrowleft1() {
    Get.back();
  }
}
