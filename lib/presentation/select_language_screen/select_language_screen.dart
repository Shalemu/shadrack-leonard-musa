import 'controller/select_language_controller.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_image.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_subtitle.dart';
import 'package:mauzoApp/widgets/app_bar/custom_app_bar.dart';
import 'package:mauzoApp/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class SelectLanguageScreen extends GetWidget<SelectLanguageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 56,
                leading: AppbarImage(
                    height: getSize(32.00),
                    width: getSize(32.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 24, top: 12, bottom: 12),
                    onTap: onTapArrowleft22),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_select_language".tr)),
            body: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomSearchView(
                      width: size.width,
                      focusNode: FocusNode(),
                      controller: controller.searchController,
                      hintText: "msg_search_language".tr,
                      margin: getMargin(left: 24, top: 16, right: 24),
                      prefix: Container(
                          margin: getMargin(
                              left: 16, top: 18, right: 10, bottom: 18),
                          child: CommonImageView(
                              svgPath: ImageConstant.imgSearch)),
                      prefixConstraints: BoxConstraints(
                          minWidth: getSize(20.00), minHeight: getSize(20.00))),
                  Container(
                      width: double.infinity,
                      margin:
                          getMargin(left: 24, top: 24, right: 24, bottom: 48),
                      decoration: AppDecoration.fillGray100.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: GetBuilder<SelectLanguageController>(
                        builder: (getController) {
                          return Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 16,
                                    right: 16,
                                    bottom: 8,
                                    top: 16
                                    ),
                                    child:  InkWell(
          highlightColor: Colors.transparent,
                                      onTap: (){
                                        getController.changeLang('en');
                                      },
                                      child: Container(
                                          margin: getMargin(
                                            top: 2.0,
                                            bottom: 2.0,
                                          ),
                                          decoration:getController.locale==Locale('ar') ?BoxDecoration(
                                            color: Colors.transparent
                                          ): AppDecoration.fillWhiteA700.copyWith(
                                            borderRadius: BorderRadiusStyle.roundedBorder16,
                                          ),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                          
                                          
                                          
                                             getController.locale==Locale('ar') ? SizedBox():Padding(
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
                                        ),
                                    )),
                             
                                Padding(
                                    padding: getPadding(left: 16,
                                    right: 16,
                                    bottom: 16,
                                    top: 8
                                    ),
                                    child:  InkWell(
          highlightColor: Colors.transparent,
                                      onTap: (){
                                        getController.changeLang('ar');
                                      },
                                      child: Container(
                                          margin: getMargin(
                                            top: 2.0,
                                            bottom: 2.0,
                                          ),
                                          decoration:getController.locale==Locale('ar') ? AppDecoration.fillWhiteA700.copyWith(
                                            borderRadius: BorderRadiusStyle.roundedBorder16,
                                          ):BoxDecoration(color: Colors.transparent),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                                      child: ClipRRect(
                                                        borderRadius: BorderRadius.circular(5),
                                                        child: CommonImageView(
                                                          imagePath: ImageConstant.egypt,
                                                          height: getVerticalSize(
                                                                24.00,
                                                          ),
                                                          width: getHorizontalSize(
                                                                32.00,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 16,
                                                        top: 3,
                                                      ),
                                                      child: Text(
                                                        "العربية",
                                                        overflow: TextOverflow.ellipsis,
                                                        textAlign: TextAlign.start,
                                                        style: AppStyle.txtNotoSansJPMedium14Gray902,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                          
                                          
                                          
                                           getController.locale==Locale('ar') ?   Padding(
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
                                              ):SizedBox(),
                                            ],
                                          ),
                                        ),
                                    ))
                             
                             
                             
                              ]);
                        }
                      ))
                ])));
  }

  onTapArrowleft22() {
    Get.back();
  }
}
