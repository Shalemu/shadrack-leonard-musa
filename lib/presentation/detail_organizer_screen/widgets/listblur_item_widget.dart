import '../controller/detail_organizer_controller.dart';
import '../models/listblur_item_model.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListblurItemWidget extends StatelessWidget {
  ListblurItemWidget(this.listblurItemModelObj);

  ListblurItemModel listblurItemModelObj;

  var controller = Get.find<DetailOrganizerController>();

  @override
  Widget build(BuildContext context) {
    return Container(
               
                height: getVerticalSize(130),
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
                         ),
                       ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: getVerticalSize(
                        96.00,
                      ),
                      width: getHorizontalSize(
                        88.00,
                      ),
                      margin: getMargin(
                        left: 12,
                        top: 12,
                        bottom: 12,
                      ),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  12.00,
                                ),
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.imgImg,
                                height: getVerticalSize(
                                  96.00,
                                ),
                                width: getHorizontalSize(
                                  88.00,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: getMargin(
                                left: 8,
                                top: 8,
                                right: 10,
                                bottom: 10,
                              ),
                              decoration: AppDecoration.fillWhiteA700
                                  .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder13,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      left: 8,
                                      top: 2,
                                      right: 8,
                                    ),
                                    child: Text(
                                      "lbl_30".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: AppStyle
                                          .txtNotoSansJPBold12Gray902,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 8,
                                      right: 8,
                                      bottom: 1,
                                    ),
                                    child: Text(
                                      "lbl_mar".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: AppStyle
                                          .txtNotoSansJPMedium8,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 12,
                        top: 20,
                        right: 12,
                        bottom: 15,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: getHorizontalSize(
                              203.00,
                            ),
                            child: Text(
                              "msg_house_of_materials".tr,
                              maxLines: null,
                              textAlign: TextAlign.start,
                              style: AppStyle.txtNotoSansJPBold14,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              203.00,
                            ),
                            margin: getMargin(
                              top: 19,
                            ),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              crossAxisAlignment:
                                  CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    top: 7,
                                    bottom: 6,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 1,
                                          bottom: 1,
                                        ),
                                        child: CommonImageView(
                                          svgPath: ImageConstant
                                              .imgLocation16x16,
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
                                          left: 4,
                                        ),
                                        child: Text(
                                          "lbl_california".tr,
                                          overflow:
                                              TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: AppStyle
                                              .txtNotoSansJPMedium12Bluegray301,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: AppDecoration
                                      .fillGray102
                                      .copyWith(
                                    borderRadius: BorderRadiusStyle
                                        .roundedBorder8,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 17,
                                          top: 7,
                                          right: 17,
                                          bottom: 6,
                                        ),
                                        child: Text(
                                          "lbl_free".tr,
                                          overflow:
                                              TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: AppStyle
                                              .txtNotoSansJPMedium12primary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
