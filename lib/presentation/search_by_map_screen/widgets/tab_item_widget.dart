import '../controller/search_by_map_controller.dart';
import '../models/tab_item_model.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TabItemWidget extends StatelessWidget {
  TabItemWidget(this.tabItemModelObj);

  TabItemModel tabItemModelObj;

  var controller = Get.find<SearchByMapController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          margin: getMargin(
            right: 12,
          ),
          decoration: AppDecoration.outlineDeeporange400261.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder13,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 12,
                  bottom: 12,
                ),
                child: CommonImageView(
                  svgPath: ImageConstant.imgRewind,
                  height: getSize(
                    16.00,
                  ),
                  width: getSize(
                    16.00,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 3,
                  top: 11,
                  right: 16,
                  bottom: 10,
                ),
                child: Text(
                  "lbl_all".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: AppStyle.txtNotoSansJPBold12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
