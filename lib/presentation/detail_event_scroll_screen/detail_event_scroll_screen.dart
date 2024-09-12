import 'controller/detail_event_scroll_controller.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_image.dart';
import 'package:mauzoApp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DetailEventScrollScreen extends GetWidget<DetailEventScrollController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(56.00),
            leadingWidth: 56,
            leading: AppbarImage(
                height: getSize(32.00),
                width: getSize(32.00),
                svgPath: ImageConstant.imgArrowleft,
                margin: EdgeInsets.only(left: 24, top: 12, bottom: 12),
                onTap: onTapArrowleft3),
            actions: [
              AppbarImage(
                  height: getSize(24.00),
                  width: getSize(24.00),
                  svgPath: ImageConstant.imgShare,
                  margin: getMargin(left: 24, top: 16, bottom: 16)),
              AppbarImage(
                  height: getSize(24.00),
                  width: getSize(24.00),
                  svgPath: ImageConstant.imgFavorite,
                  margin:
                      getMargin(left: 16, top: 16, right: 24, bottom: 16))
            ]),
        body: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            
           
            ]));
  }

  onTapArrowleft3() {
    Get.back();
  }
}
