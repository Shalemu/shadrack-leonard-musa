import 'package:mauzoApp/widgets/spacing.dart';

import '../search_filter_screen/widgets/listeye_item_widget.dart';
import 'controller/search_filter_controller.dart';
import 'models/listeye_item_model.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_image.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_subtitle.dart';
import 'package:mauzoApp/widgets/app_bar/custom_app_bar.dart';
import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:mauzoApp/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';

class SearchFilterScreen extends GetWidget<SearchFilterController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgClose,
                    margin: EdgeInsets.only(left: 24, top: 15, bottom: 16),
                    onTap: onTapClose),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_filters".tr)),
            body: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                      padding: getPadding(top: 1),
                      child: Padding(
                          padding: getPadding(top: 1),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray101))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding:
                                            getPadding(left: 24, top: 16, right: 24),
                                        child: Text("lbl_dates".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: AppStyle.txtNotoSansJPBold14))),
                                GetBuilder<SearchFilterController>(
                                  builder: (getController) {
                                    return  InkWell(
          highlightColor: Colors.transparent,
                                      onTap: (){
                                        getController.selectDate(context);
                                      },
                                      child: Container(
                                          margin: getMargin(left: 24, top: 14, right: 24),
                                          decoration: AppDecoration.fillGray100.copyWith(
                                              borderRadius:
                                                  BorderRadiusStyle.roundedBorder16),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        left: 16, top: 19, bottom: 15),
                                                    child: Row(
                                                      children: [
                                                        Text("${getController.selectedDate.start.toLocal().format("MMMdd,yyyy")}".split(' ')[0],
                                                            overflow: TextOverflow.ellipsis,
                                                            textAlign: TextAlign.start,
                                                            style: AppStyle
                                                                .txtNotoSansJPMedium14Gray902),
                                                     
                                                        Text(' - ',
                                                            overflow: TextOverflow.ellipsis,
                                                            textAlign: TextAlign.start,
                                                            style: AppStyle
                                                                .txtNotoSansJPMedium14Gray902),
                                                     
                                                          Text("${getController.selectedDate.end.toLocal().format("MMMdd,yyyy")}".split(' ')[0],
                                                            overflow: TextOverflow.ellipsis,
                                                            textAlign: TextAlign.start,
                                                            style: AppStyle
                                                                .txtNotoSansJPMedium14Gray902),
                                                      ],
                                                    )),
                                                Padding(
                                                    padding: getPadding(
                                                        top: 16, right: 16, bottom: 16),
                                                    child: CommonImageView(
                                                        svgPath:
                                                            ImageConstant.imgCalendar14x14,
                                                        height: getSize(24.00),
                                                        width: getSize(24.00)))
                                              ])),
                                    );
                                  }
                                ),
                                Padding(
                                    padding: getPadding(left: 24, top: 25, right: 24),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("lbl_categories".tr,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style:
                                                      AppStyle.txtNotoSansJPBold14)),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("lbl_see_all".tr,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: AppStyle
                                                      .txtNotoSansJPMedium14primary))
                                        ])),
                                Container(
                                    width: double.infinity,
                                    margin: getMargin(left: 24, top: 13, right: 24),
                                    decoration: AppDecoration.fillGray100.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16),
                                    child: Padding(
                                        padding: getPadding(
                                            left: 12, right: 12, bottom: 12),
                                        child: GetBuilder<SearchFilterController>(
                                          builder :(getController) => ListView.builder(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: getController
                                                .searchFilterModelObj
                                                .value
                                                .listeyeItemList
                                                .length,
                                              
                                            itemBuilder: (context, index) {
                                              ListeyeItemModel model =
                                                  getController
                                                      .searchFilterModelObj
                                                      .value
                                                      .listeyeItemList[index];
                                              return  InkWell(
          highlightColor: Colors.transparent,
                                                onTap: (){
                                                  getController.onCategorySelected(index);
                                                },
                                                child: ListeyeItemWidget(listeyeItemModelObj: model,index: index,));
                                            })))),
                                Padding(
                                    padding: getPadding(left: 24, top: 24, right: 24),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("lbl_price".tr,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style:
                                                      AppStyle.txtNotoSansJPBold14)),
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("lbl_choose_price".tr,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: AppStyle
                                                      .txtNotoSansJPMedium14primary))
                                        ])),
                                CustomDropDown(
                                    width: size.width,
                                    focusNode: FocusNode(),
                                      value:controller.searchFilterModelObj.value.dropdownItemList[0] ,
                                    icon: Container(
                                        margin: getMargin(left: 30, right: 16),
                                        child: CommonImageView(
                                            svgPath: ImageConstant
                                                .imgArrowdownBluegray301)),
                                    hintText: "lbl_any_price".tr,
                                    margin: getMargin(left: 24, top: 13, right: 24),
                                    items: controller
                                        .searchFilterModelObj.value.dropdownItemList,
                                    onChanged: (value) {
                                      controller.onSelected(value);
                                    }),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding:
                                            getPadding(left: 24, top: 26, right: 24),
                                        child: Text("lbl_event_type".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: AppStyle.txtNotoSansJPBold14))),
                                CustomDropDown(
                                    width: size.width,
                                    focusNode: FocusNode(),
                                    value:controller.searchFilterModelObj.value.dropdownItemList1[0] ,
                                    icon: Container(
                                        margin: getMargin(left: 30, right: 16),
                                        child: CommonImageView(
                                            svgPath: ImageConstant
                                                .imgArrowdownBluegray301)),
                                    hintText: "lbl_all_types".tr,
                                    margin: getMargin(left: 24, top: 13, right: 24),
                                    items: controller
                                        .searchFilterModelObj.value.dropdownItemList1,
                                    onChanged: (value) {
                                      controller.onSelected1(value);
                                    }),
                               VerticalSpace(height: 20)
                             
                              ])
                              )
                              ),
                ),
            Container(
                              width: double.infinity,
                             
                              decoration: AppDecoration.fillWhiteA700,
                              child: CustomButton(
                                  width: size.width,
                                  text: "lbl_apply".tr,
                                  margin: getMargin(
                                      left: 24,
                                      top: 10,
                                      right: 24,
                                      bottom: 20),
                                  shape: ButtonShape.RoundedBorder16,
                                  onTap: (){
                                    Get.back();
                                  },
                                  ))
                       
           
              ],
            )
                        )
                        );
  }

  onTapClose() {
    Get.back();
  }
}
