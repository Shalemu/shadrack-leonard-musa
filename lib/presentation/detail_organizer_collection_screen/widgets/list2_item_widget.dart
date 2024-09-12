import '../controller/detail_organizer_collection_controller.dart';
import '../models/list2_item_model.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class List2ItemWidget extends StatelessWidget {
  List2ItemWidget({required this.list2ItemModelObj,
  required this.index
  });

  List2ItemModel list2ItemModelObj;
  int index;

  // var controller = Get.lazyPut(() => DetailOrganizerCollectionController());
        var controller=  Get.find<DetailOrganizerCollectionController>();
  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
        
          margin: getMargin(
            right: 16,
          ),
          child: Align(
           
            alignment: Alignment.center,
            child: Container(
              margin: getMargin(
                right: 4,
                bottom: 4,
              ),
              decoration: AppDecoration.fillWhiteA700.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
                 boxShadow: [
                         BoxShadow(
                           color: ColorConstant.gray90019,
                           spreadRadius: getHorizontalSize(
                             0.00,
                           ),
                           blurRadius: getHorizontalSize(
                             10.00,
                           ),
                           offset: Offset(
                             0,
                             4,
                           ),
                         )],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: getVerticalSize(
                        140.00,
                      ),
                      width: getHorizontalSize(
                        216.00,
                      ),
                      margin: getMargin(
                        left: 12,
                        top: 12,
                        right: 12,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              16.00,
                            ),
                          ),
                          child: CommonImageView(
                            imagePath:list2ItemModelObj.img,
                            height: getVerticalSize(
                              140.00,
                            ),
                            width: getHorizontalSize(
                              216.00,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 12,
                      right: 16,
                    ),
                    child: Text(
                     list2ItemModelObj.title,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: AppStyle.txtNotoSansJPBold14,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 4,
                      right: 16,
                    ),
                    child: Text(
                      "lbl_by_evenline".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: AppStyle.txtNotoSansJPRegular12,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 12,
                        top: 6,
                        right: 12,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 4,
                              bottom: 1,
                            ),
                            child: Text(
                              "msg_12_upcoming_events".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style:
                                  AppStyle.txtNotoSansJPMedium12primary,
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              24.00,
                            ),
                            width: getHorizontalSize(
                              56.00,
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      right: 10,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          12.00,
                                        ),
                                      ),
                                      child: CommonImageView(
                                        imagePath: ImageConstant.imgAvatar5,
                                        height: getSize(
                                          24.00,
                                        ),
                                        width: getSize(
                                          24.00,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 16,
                                      right: 16,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          12.00,
                                        ),
                                      ),
                                      child: CommonImageView(
                                        imagePath: ImageConstant.imgAvatar6,
                                        height: getSize(
                                          24.00,
                                        ),
                                        width: getSize(
                                          24.00,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 10,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          12.00,
                                        ),
                                      ),
                                      child: CommonImageView(
                                        imagePath: ImageConstant.imgAvatar7,
                                        height: getSize(
                                          24.00,
                                        ),
                                        width: getSize(
                                          24.00,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GetBuilder<DetailOrganizerCollectionController>(
                    builder: (getController) {
                      return CustomButton(
                        width: 208,
                        text:list2ItemModelObj.isFollowing? "lbl_following".tr:"lbl_follow".tr,
                        margin: getMargin(
                          left: 12,
                          top: 16,
                          right: 12,
                          bottom: 16,
                        ),
                        onTap: (){
                          getController.onFollowBtnTap(index);
                        },
                        variant:list2ItemModelObj.isFollowing?ButtonVariant.FillTeal900 :ButtonVariant.OutlineTeal900,
                        fontStyle:list2ItemModelObj.isFollowing?ButtonFontStyle.NotoSansJPBold12WhiteA700: ButtonFontStyle.NotoSansJPBold12,
                        alignment: Alignment.center,
                      );
                    }
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
