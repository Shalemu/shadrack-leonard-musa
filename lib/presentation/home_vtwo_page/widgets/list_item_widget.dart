import '../controller/home_vtwo_controller.dart';
import '../models/list_item_model.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  ListItemWidget(this.listItemModelObj);

  ListItemModel listItemModelObj;

  var controller = Get.find<HomeVtwoController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child:  InkWell(
          highlightColor: Colors.transparent,
         
          onTap: () {
            Get.toNamed(AppRoutes.detailEventScreen);
          },
          child: Container(
            height: getVerticalSize(
              290.00,
            ),
            width: getHorizontalSize(
              250.00,
            ),
               
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        20.00,
                      ),
                    ),
                    child: CommonImageView(
                      imagePath: listItemModelObj.img,
                      height: getVerticalSize(
                        290.00,
                      ),
                      width: getHorizontalSize(
                        250.00,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: getPadding(
                      all: 12,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            48.00,
                          ),
                          margin: getMargin(
                            left: 10,
                          ),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: getPadding(
                               
                                  top: 7,
                               
                                ),
                                child: Text(
                                  listItemModelObj.day,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: AppStyle.txtNotoSansJPBold14,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                 
                                  top: 1,
                                
                                  bottom: 4,
                                ),
                                child: Text(
                                  listItemModelObj.month,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: AppStyle.txtNotoSansJPRegular10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            226.00,
                          ),
                        
                          decoration: AppDecoration.outlineGray90033.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: getHorizontalSize(
                                  197.00,
                                ),
                                margin: getMargin(
                                  left: 12,
                                  top: 17,
                                  right: 12,
                                ),
                                child: Text(
                                  listItemModelObj. itemName,
                                  maxLines: null,
                                  textAlign: TextAlign.start,
                                  style: AppStyle.txtNotoSansJPBold14,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 6,
                                  top: 11,
                                  right: 6,
                                  bottom: 12,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            top: 7,
                                            bottom: 6,
                                          ),
                                          child: Text(
                                           listItemModelObj.location ,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: AppStyle.txtNotoSansJPRegular12,
                                          ),
                                        ),
                                        Container(
                                          height: getSize(
                                            4.00,
                                          ),
                                          width: getSize(
                                            4.00,
                                          ),
                                          margin: getMargin(
                                            left: 4,
                                            top: 14,
                                            bottom: 14,
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.gray200,
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                2.00,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 4,
                                            top: 7,
                                            bottom: 6,
                                          ),
                                          child: Text(
                                            "lbl_09_00_pm".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: AppStyle.txtNotoSansJPRegular12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  
                                    CustomButton(
                                      width: 64,
                                      text: listItemModelObj.price,
                                     
                                      variant: ButtonVariant.FillIndigo1004c,
                                      shape: ButtonShape.RoundedBorder8,
                                      padding: ButtonPadding.PaddingAll6,
                                      fontStyle:
                                          ButtonFontStyle.NotoSansJPMedium12,
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
