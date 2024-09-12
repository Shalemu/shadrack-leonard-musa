import 'package:dotted_decoration/dotted_decoration.dart';

import '../controller/list_ticket_upcoming_controller.dart';
import '../models/listbackground_item_model.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:mauzoApp/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListbackgroundItemWidget extends StatelessWidget {
  ListbackgroundItemWidget(this.listbackgroundItemModelObj);

  ListbackgroundItemModel listbackgroundItemModelObj;

  var controller = Get.find<ListTicketUpcomingController>();

  @override
  Widget build(BuildContext context) {
    return  InkWell(
          highlightColor: Colors.transparent,
        onTap: (){
        Get.toNamed(AppRoutes.detailTicketScreen);
      },
      child: Container(
        height: getVerticalSize(
          185.00,
        ),
       
        margin: getMargin(
          top: 8.0,
          bottom: 8.0,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: CommonImageView(
                imagePath: ImageConstant.background,
                height: getVerticalSize(
                  185.00,
                ),
               
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 20,
                  top: 18,
                  right: 20,
                  bottom: 18,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Container(
                                             
                            margin: getMargin(
                              top: 5,
                              bottom: 5,
                            ),
                            child: Text(
                              "msg_uk_startup_business".tr,
                              maxLines: null,
                              textAlign: TextAlign.start,
                              style: AppStyle.txtNotoSansJPBold14,
                            ),
                          ),
                        ),
                        CustomIconButton(
                          height: 44,
                          width: 44,
                          variant: IconButtonVariant.Fillprimary,
                          child: CommonImageView(
                            svgPath: ImageConstant.imgQuestion44x44,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: getVerticalSize(
                        1.00,
                      ),
                      width: getHorizontalSize(
                        295.00,
                      ),
                      margin: getMargin(
                        top: 16,
                      ),
                      
                      decoration:
                      DottedDecoration(
      shape: Shape.line, linePosition: LinePosition.bottom,
      color: ColorConstant.gray200,
      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      right: 10,
                                    ),
                                    child: Text(
                                      "lbl_time".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: AppStyle.txtNotoSansJPRegular10,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 2,
                                    ),
                                    child: Text(
                                      "lbl_10_00_pm".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style:
                                          AppStyle.txtNotoSansJPMedium14Gray902,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 16,
                                  top: 1,
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
                                        "lbl_seat".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: AppStyle.txtNotoSansJPRegular10,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 2,
                                      ),
                                      child: Text(
                                        "lbl_no_seat".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style:
                                            AppStyle.txtNotoSansJPMedium14Gray902,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          CustomButton(
                            width: 111,
                            text: "msg_premium_ticket_x1".tr,
                            margin: getMargin(
                              top: 5,
                              bottom: 1,
                            ),
                            variant: ButtonVariant.FillGray100,
                            shape: ButtonShape.RoundedBorder8,
                            padding: ButtonPadding.PaddingAll6,
                            fontStyle: ButtonFontStyle.NotoSansJPMedium10,
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
    );
  }
}
