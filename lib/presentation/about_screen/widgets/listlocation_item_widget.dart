import '../controller/about_controller.dart';
import '../models/listlocation_item_model.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListlocationItemWidget extends StatelessWidget {
  ListlocationItemWidget(this.listlocationItemModelObj);

  ListlocationItemModel listlocationItemModelObj;

  var controller = Get.find<AboutController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 8.0,
        bottom: 8.0,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomIconButton(
            height: 48,
            width: 48,
            margin: getMargin(
              left: 16,
              top: 19,
              bottom: 19,
            ),
            variant: IconButtonVariant.Fillprimary,
            child: CommonImageView(
              svgPath: ImageConstant.imgLocation48x48,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 18,
              right: 29,
              bottom: 16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    right: 10,
                  ),
                  child: Text(
                    "msg_explore_your_city".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: AppStyle.txtNotoSansJPBold14,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    221.00,
                  ),
                  margin: getMargin(
                    top: 5,
                  ),
                  child: Text(
                    "msg_visit_a_museum".tr,
                    maxLines: null,
                    textAlign: TextAlign.start,
                    style: AppStyle.txtNotoSansJPRegular10Gray902,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
