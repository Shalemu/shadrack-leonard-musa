import '../controller/search_filter_controller.dart';
import '../models/listeye_item_model.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListeyeItemWidget extends StatelessWidget {
  ListeyeItemWidget({required this.listeyeItemModelObj,
  required this.index});

  ListeyeItemModel listeyeItemModelObj;
  int index;

  var controller = Get.find<SearchFilterController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(top: 12),
      decoration:controller.selectedCategory==index?
       AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ):
       AppDecoration.fillGray100.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      padding: getPadding(
        left: 16,
        right: 16
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
             
              top: 18,
              bottom: 16,
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
                   imagePath: listeyeItemModelObj.img,
                    height: getSize(
                      20.00,
                    ),
                    width: getSize(
                      20.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 1,
                  ),
                  child: Text(
                   listeyeItemModelObj.title,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: AppStyle.txtNotoSansJPMedium14Gray902,
                  ),
                ),
              ],
            ),
          ),
      controller.selectedCategory==index? Icon(Icons.check_rounded,
         color: ColorConstant.greenA700,
         size: 20,

         ):SizedBox()
        ],
      ),
    );
  }
}
