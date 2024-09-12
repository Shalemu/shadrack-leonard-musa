import 'package:animate_do/animate_do.dart';

import '../favorites_page/widgets/listblur_one_item_widget.dart';
import '../favorites_page/widgets/listimg_item_widget.dart';
import 'controller/favorites_controller.dart';
import 'models/favorites_model.dart';
import 'models/listblur_one_item_model.dart';
import 'models/listimg_item_model.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_image.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_subtitle.dart';
import 'package:mauzoApp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FavoritesPage extends StatelessWidget {
  FavoritesController controller =
      Get.put(FavoritesController(FavoritesModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 56,
                leading: AppbarImage(
                    height: getSize(32.00),
                    width: getSize(32.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin:EdgeInsets.only(left: 24, top: 12, bottom: 12),
                    onTap: onTapArrowleft14),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_favorites".tr)),
            body: Padding(
                padding: getPadding( 
                  top: 16,
                 ),
                child: SingleChildScrollView(
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding( left: 22,
                 ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                      padding: getPadding(bottom: 2),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgCalendar14x14,
                                          height: getSize(20.00),
                                          width: getSize(20.00))),
                                  Padding(
                                      padding: getPadding(left: 8, top: 1),
                                      child: Text("lbl_tue_march_29".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: AppStyle.txtNotoSansJPBold14))
                                ])),
                        Padding(
                            padding: getPadding(top: 13),
                            child: Obx(() => ListView.builder(
                              padding: getPadding(
                                 left: 22,
                  right: 22
                              ),
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: controller.favoritesModelObj.value
                                    .listimgItemList.length,
                                itemBuilder: (context, index) {
                                  ListimgItemModel model = controller
                                      .favoritesModelObj
                                      .value
                                      .listimgItemList[index];
                                  return FadeInLeft(child: ListimgItemWidget(model));
                                }))),
                        Padding(
                            padding: getPadding(top: 24,  left: 22,
                 ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                      padding: getPadding(bottom: 2),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgCalendar14x14,
                                          height: getSize(20.00),
                                          width: getSize(20.00))),
                                  Padding(
                                      padding: getPadding(left: 8, top: 1),
                                      child: Text("lbl_fri_oct_01".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: AppStyle.txtNotoSansJPBold14))
                                ])),
                        Padding(
                            padding: getPadding(top: 13),
                            child: Obx(() => ListView.builder(
                              padding: getPadding(
                                 left: 22,
                  right: 22
                              ),
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: controller.favoritesModelObj.value
                                    .listblurOneItemList.length,
                                itemBuilder: (context, index) {
                                  ListblurOneItemModel model = controller
                                      .favoritesModelObj
                                      .value
                                      .listblurOneItemList[index];
                                  return FadeInLeft(child: ListblurOneItemWidget(model));
                                })))
                      ]),
                ))));
  }

  onTapArrowleft14() {
    Get.back();
  }
}
