import 'package:mauzoApp/presentation/detail_organizer_about_screen/detail_organizer_about_screen.dart';
import 'package:mauzoApp/presentation/detail_organizer_collection_screen/detail_organizer_collection_screen.dart';
import 'package:mauzoApp/widgets/spacing.dart';

import '../detail_organizer_screen/widgets/listblur_item_widget.dart';
import 'controller/detail_organizer_controller.dart';
import 'models/listblur_item_model.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mauzoApp/widgets/app_bar/custom_app_bar.dart';
import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class DetailOrganizerScreen extends GetWidget<DetailOrganizerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      height: getVerticalSize(200.00),
                      width: size.width,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                height: getVerticalSize(180.00),
                                width: size.width,
                                margin: getMargin(bottom: 10),
                                child: Stack(
                                    
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: CommonImageView(
                                              imagePath: ImageConstant.imgImage,
                                              height: getVerticalSize(180.00),
                                              width:
                                                  size.width)),
                                      Align(
                                          alignment: Alignment.bottomCenter,

                                          child: Container(
                                            height: getVerticalSize(180),
                                              decoration: AppDecoration
                                                  .gradientWhiteA70000WhiteA700,
                                          ))
                                   
                                   
                                  ,  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: getPadding(
                                        top: 20
                                      ),
                                      child: CustomAppBar(
                                        
                                                            height: getVerticalSize(
                                                                56.00),
                                                            leadingWidth: 64,
                                                            leading: AppbarIconbutton(
                                                                svgPath: ImageConstant
                                                                    .imgArrowleft,
                                                                margin: getMargin(
                                                                    left: 24),
                                                                onTap:
                                                                    onTapArrowleft8),
                                                            actions: [
                                                              AppbarIconbutton(
                                                                  svgPath: ImageConstant
                                                                      .imgOverflowmenu,
                                                                  margin: getMargin(
                                                                      left: 24,
                                                                      right: 24))
                                                            ]),
                                    ),
                                  )
                                                
                                   
                                    ]))),
                        
                        
                        
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                            
                             
                                height: getSize(100.00),
                                width: getSize(100.00),
                                decoration: AppDecoration.outlineWhiteA700
                                    .copyWith(
                                       shape: BoxShape.circle,
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
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(1000),
                                  child: CommonImageView(
                                      imagePath:
                                          ImageConstant.imgImg,
                                      height:
                                          getVerticalSize(100.00),
                                      width: getHorizontalSize(
                                          100.00)),
                                )))
                   
      ])),

     
                  Expanded(
                      child: Padding(
                          padding: getPadding( top: 15, ),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                    padding:
                                        getPadding(left: 24, right: 24),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text("lbl_the_design_b".tr,
                                              overflow:
                                                  TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: AppStyle
                                                  .txtNotoSansJPBold20),
                                          Padding(
                                              padding: getPadding(
                                                  left: 4,
                                                  top: 1,
                                                  bottom: 7),
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgCheckmark16x16,
                                                  height: getSize(20.00),
                                                  width: getSize(20.00)))
                                        ])),
                                Padding(
                                    padding: getPadding(
                                        left: 24, top: 6, right: 24),
                                    child: Text("lbl_15k_followers".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: AppStyle
                                            .txtNotoSansJPMedium14Bluegray301)),
                                Padding(
                                    padding: getPadding(
                                        left: 24, top: 12, right: 24),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          CustomButton(
                                              width: 132,
                                              text: "lbl_message".tr,
                                              variant: ButtonVariant
                                                  .OutlineGray101,
                                              padding: ButtonPadding
                                                  .PaddingAll13,
                                              fontStyle: ButtonFontStyle
                                                  .NotoSansJPBold14Gray902),
                                          CustomButton(
                                              width: 132,
                                              text: "lbl_follow".tr,
                                              margin: getMargin(left: 16),
                                              padding: ButtonPadding
                                                  .PaddingAll13)
                                        ])),
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
                                   VerticalSpace(height: 10),
                              Expanded(
                                child: TabBarView(
                                
                                controller: controller.tabController,
                                children: [
                                  Align(
                                        alignment: Alignment.centerLeft,
                                        child: Obx(() => ListView.separated(
                                           padding: getPadding(top: 10,
                                            bottom: 20,
                                            left: 20,
                                            right: 20
                                            ),
                                            physics:
                                                BouncingScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: controller
                                                .detailOrganizerModelObj
                                                .value
                                                .listblurItemList
                                                .length,
                                                separatorBuilder: (context, index) => VerticalSpace(height: 16),
                                            itemBuilder: (context, index) {
                                              ListblurItemModel model =
                                                  controller
                                                      .detailOrganizerModelObj
                                                      .value
                                                      .listblurItemList[index];
                                              return ListblurItemWidget(
                                                  model);
                                            
                                            }
                                            )
                                            )
                                            ),
                                DetailOrganizerCollectionScreen(),
                                 DetailOrganizerAboutScreen()
                                 
                              ]))
                              
                              
                              
                             
                             
                              ]
                              )
                              )
                                  )
                ]
                )
                )
                );
  }

  onTapArrowleft8() {
    Get.back();
  }
}
