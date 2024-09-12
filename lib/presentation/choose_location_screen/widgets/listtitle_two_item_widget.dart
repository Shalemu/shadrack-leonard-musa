import 'package:flutter_svg/svg.dart';

import '../controller/choose_location_controller.dart';
import '../models/listtitle_two_item_model.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListtitleTwoItemWidget extends StatelessWidget {
  ListtitleTwoItemWidget(this.listtitleTwoItemModelObj);

  ListtitleTwoItemModel listtitleTwoItemModelObj;

  var controller = Get.find<ChooseLocationController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child:  InkWell(
          highlightColor: Colors.transparent,
        onTap: (){
          Get.toNamed(AppRoutes.followOrganizerScreen);
        },
        child: Container(
         
          decoration: AppDecoration.outlineGray101.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: getPadding(
                  left: 20,
                  top: 25,
                  bottom: 23,
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
                        listtitleTwoItemModelObj.title,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: AppStyle.txtNotoSansJPBold16,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 5,
                      ),
                      child: Text(
                        listtitleTwoItemModelObj.subtitle,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: AppStyle.txtNotoSansJPRegular12,
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: getMargin(
                 
                  top: 16,
                  right: 16,
                  bottom: 16,
                ),
                color: ColorConstant.gray100,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.circleBorder32,
                ),
                child: Container(
                  height: getSize(
                    64.00,
                  ),
                  width: getSize(
                    64.00,
                  ),
                  decoration: AppDecoration.fillGray100.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder32,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            all: 4,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                28.00,
                              ),
                            ),
                            child: CommonImageView(
                              imagePath: ImageConstant.imgMapsiclemap,
                              height: getSize(
                                56.00,
                              ),
                              width: getSize(
                                56.00,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          ImageConstant.imgLocation1,
                          height: getSize(
                            20.00,
                          ),
                          color: listtitleTwoItemModelObj.pinColor,
                          width: getSize(
                            20.00,
                          ),
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
    );
  }
}
