import '../controller/detail_event1_controller.dart';
import '../models/list1_item_model.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class List1ItemWidget extends StatelessWidget {
  List1ItemWidget(this.list1ItemModelObj);

  List1ItemModel list1ItemModelObj;

  var controller = Get.find<DetailEvent1Controller>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        right: 249,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomIconButton(
            height: 56,
            width: 56,
            variant: IconButtonVariant.OutlineGray101,
            shape: IconButtonShape.CircleBorder28,
            padding: IconButtonPadding.PaddingAll15,
            child: CommonImageView(
              svgPath: ImageConstant.imgFacebook,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 1,
                top: 12,
                right: 1,
              ),
              child: Text(
                "lbl_facebook".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: AppStyle.txtNotoSansJPRegular12Gray902,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
