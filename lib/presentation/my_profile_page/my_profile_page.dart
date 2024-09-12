import 'package:readmore/readmore.dart';

import '../../widgets/spacing.dart';
import '../my_profile_page/widgets/listblur2_item_widget.dart';
import 'controller/my_profile_controller.dart';
import 'models/listblur2_item_model.dart';
import 'models/my_profile_model.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_image.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_subtitle.dart';
import 'package:mauzoApp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MyProfilePage extends StatelessWidget {
  MyProfileController controller =
      Get.put(MyProfileController(MyProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 56,
                leading: AppbarImage(
                    height: getSize(32.00),
                    width: getSize(32.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 24, top: 12, bottom: 12),
                    onTap: onTapArrowleft19),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_profile".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      onTap: (){
                        Get.toNamed(AppRoutes.editProfileScreen);
                      },
                      svgPath: ImageConstant.imgLocation6,
                      margin: getMargin(left: 24, top: 16, bottom: 16)),
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                        onTap: (){
                        Get.toNamed(AppRoutes.settingsScreen);
                      },
                      svgPath: ImageConstant.imgSettings1,
                      margin:
                          getMargin(left: 16, top: 16, right: 24, bottom: 16))
                ]),
            body: SingleChildScrollView(
                child: Padding(
                    padding: getPadding(top: 24),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              height: getSize(88.00),
                              width: getSize(88.00),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: ColorConstant.whiteA700,
                                    width: 4,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: ColorConstant.gray90019,
                                      spreadRadius: getHorizontalSize(
                                        0.00,
                                      ),
                                      blurRadius: getHorizontalSize(
                                        16.00,
                                      ),
                                      offset: Offset(
                                        0,
                                        0,
                                      ),
                                    ),
                                  ],
                                  shape: BoxShape.circle),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(1000),
                                child: CommonImageView(
                                    imagePath: ImageConstant.imgImg86x80,
                                    height: getVerticalSize(88.00),
                                    width: getHorizontalSize(88.00)),
                              )),
                        
                        
                          Padding(
                              padding: getPadding(left: 37, top: 18, right: 37),
                              child: Text("lbl_rose_merry".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: AppStyle.txtNotoSansJPBold18)),
                          Padding(
                              padding: getPadding(left: 37, top: 2, right: 37),
                              child: Text("msg_michellabarkin_gmail_com".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: AppStyle.txtNotoSansJPRegular12)),
                          Container(
                              margin: getMargin(left: 37, top: 22, right: 37),
                              decoration: AppDecoration.outlineGray2001
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder16),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding:
                                            getPadding(top: 16, bottom: 15),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_150".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: AppStyle
                                                      .txtNotoSansJPBold18),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 1,
                                                          top: 3,
                                                          right: 1),
                                                      child: Text(
                                                          "lbl_likes".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: AppStyle
                                                              .txtNotoSansJPRegular12)))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 49, top: 16, bottom: 14),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 15, right: 15),
                                                  child: Text("lbl_50".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: AppStyle
                                                          .txtNotoSansJPBold18)),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(top: 4),
                                                      child: Text(
                                                          "lbl_my_ticket".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: AppStyle
                                                              .txtNotoSansJPRegular12)))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 38, top: 16, bottom: 14),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 11, right: 11),
                                                  child: Text("lbl_250".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: AppStyle
                                                          .txtNotoSansJPBold18)),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(top: 4),
                                                      child: Text(
                                                          "lbl_following".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: AppStyle
                                                              .txtNotoSansJPRegular12)))
                                            ]))
                                  ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: double.infinity,
                                  margin: getMargin(top: 32),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .customBorderTL40),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        TabBar(
                                          padding: getPadding(
                                              left: 24, top: 16, right: 24),
                                          controller: controller.tabController,
                                          tabs: [
                                            Tab(
                                              text: 'Events',
                                            ),
                                            Tab(
                                              text: 'Collections',
                                            ),
                                            Tab(
                                              text: 'About',
                                            ),
                                          ],
                                          indicatorColor: ColorConstant.primary,
                                          labelStyle: TextStyle(
                                            fontSize: getFontSize(
                                              14,
                                            ),
                                            fontFamily: 'Noto Sans JP',
                                            fontWeight: FontWeight.w700,
                                          ),
                                          unselectedLabelStyle:TextStyle(
                                            fontSize: getFontSize(
                                              14,
                                            ),
                                            fontFamily: 'Noto Sans JP',
                                            fontWeight: FontWeight.w500,
                                          ) ,
                                          labelColor: ColorConstant.primary,
                                          unselectedLabelColor:
                                              ColorConstant.bluegray301,
                                        ),
                                       
                                        Container(
                                          
                                            height: getVerticalSize(300),
                                            child:TabBarView(
                                              controller: controller.tabController,
                                              children: 
                                              [
                                               Obx(() => ListView.builder(
                                                padding: getPadding(
                                                    left: 24, right: 22,
                                                    top: 14
                                                    ),
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                itemCount: controller
                                                    .myProfileModelObj
                                                    .value
                                                    .listblur2ItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  Listblur2ItemModel model =
                                                      controller
                                                              .myProfileModelObj
                                                              .value
                                                              .listblur2ItemList[
                                                          index];
                                                  return Listblur2ItemWidget(
                                                      model);
                                                })
                                                ),
                                              
                                               Obx(() => ListView.builder(
                                                padding: getPadding(
                                                    left: 24, right: 22,
                                                     top: 14),
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                itemCount: controller
                                                    .myProfileModelObj
                                                    .value
                                                    .listblur2ItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  Listblur2ItemModel model =
                                                      controller
                                                              .myProfileModelObj
                                                              .value
                                                              .listblur2ItemList[
                                                          index];
                                                  return Listblur2ItemWidget(
                                                      model);
                                                })
                                                ),
                                              
                                              SingleChildScrollView(
                                                child: Column(
                                                    children: [
                                              
                                                Padding(
                                                                          padding:
                                                                                    getPadding(left: 24, top: 9, right: 24),
                                                                          child: ReadMoreText(
                                                                            
                                                                            "msg_this_is_a_space".tr,
                                                                            trimLines: 3,
                                                                            
                                                                            style: AppStyle.txtNotoSansJPRegular14,
                                                                            
                                                                            colorClickableText:ColorConstant.primary,
                                              
                                                                            trimMode: TrimMode.Line,
                                                                            trimCollapsedText: 'Show more',
                                                                            trimExpandedText: 'Show less',
                                                                            lessStyle: AppStyle
                                                                                        .txtNotoSansJPMedium14primary,
                                                                            moreStyle: AppStyle
                                                                                        .txtNotoSansJPMedium14primary,
                                                                          ),
                                                                        ),
                                                                      
                                              
                                                     
                                                           
                                                                Padding(
                                                                    padding:
                                                                        getPadding(left: 24, top: 52, right: 24, bottom: 20),
                                                                    child: Row(
                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                      children: [
                                                                        CommonImageView(
                                                                            imagePath: ImageConstant.social1,
                                                                            height: getVerticalSize(56.00),
                                              
                                                                            width: getHorizontalSize(56.00),
                                                                            fit: BoxFit.fill,
                                                                            ),
                                                                      HorizontalSpace(width: 16),
                                                                        CommonImageView(
                                                                            imagePath: ImageConstant.social2,
                                                                            height: getVerticalSize(56.00),
                                              
                                                                            width: getHorizontalSize(56.00),
                                                                            fit: BoxFit.fill,
                                                                            ),
                                                                      HorizontalSpace(width: 16),
                                                                        CommonImageView(
                                                                            imagePath: ImageConstant.social3,
                                                                            height: getVerticalSize(56.00),
                                              
                                                                            width: getHorizontalSize(56.00),
                                                                            fit: BoxFit.fill,
                                                                            ),
                                                                   
                                              
                                                                      
                                                                      ],
                                                                    ))
                                                              
                                                    ],
                                              
                                              
                                                  ),
                                              ),
 
 
                                            ])
                                              
                                                )
                                      ])))
                        ])))));
  }

  onTapArrowleft19() {
    Get.back();
  }
}
