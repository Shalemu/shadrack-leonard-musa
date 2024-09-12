import '../controller/select_language_controller.dart';
import '../models/listglobe_item_model.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListglobeItemWidget extends StatelessWidget {
  ListglobeItemWidget(this.listglobeItemModelObj);

  ListglobeItemModel listglobeItemModelObj;

  var controller = Get.find<SelectLanguageController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 2.0,
        bottom: 2.0,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              left: 16,
              top: 16,
              bottom: 15,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: getPadding(
                    bottom: 1,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgGlobe24x32,
                    height: getVerticalSize(
                      24.00,
                    ),
                    width: getHorizontalSize(
                      32.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                    top: 3,
                  ),
                  child: Text(
                    "lbl_english_usa".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: AppStyle.txtNotoSansJPMedium14Gray902,
                  ),
                ),
              ],
            ),
          ),
      
      
      
          Padding(
            padding: getPadding(
           
              top: 16,
              right: 12,
              bottom: 16,
            ),
            child: CommonImageView(
              svgPath: ImageConstant.imgCheckmark24x24,
              height: getSize(
                24.00,
              ),
              width: getSize(
                24.00,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
