import 'package:animate_do/animate_do.dart';
import 'package:mauzoApp/presentation/search_categories_page/search_auto_complete_screen.dart';
import 'package:mauzoApp/widgets/custom_text_form_field.dart';
import 'package:mauzoApp/widgets/spacing.dart';

import 'controller/search_categories_controller.dart';
import 'models/search_categories_model.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_image.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_subtitle.dart';
import 'package:mauzoApp/widgets/app_bar/custom_app_bar.dart';
import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SearchCategoriesPage1 extends StatelessWidget {
  SearchCategoriesController controller =
      Get.put(SearchCategoriesController(SearchCategoriesModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 56,
                leading: AppbarImage(
                    height: getSize(32.00),
                    width: getSize(32.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 24, top: 12, bottom: 12),
                    onTap: onTapArrowleft11),
                centerTitle: true,
                title: AppbarSubtitle(text: "cart".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgSettings24x24,
                      onTap: (){
                        Get.toNamed(AppRoutes.searchFilterScreen);
                      },
                      margin:
                          getMargin(left: 24, top: 16, right: 24, bottom: 16))
                ]),
            body: GetBuilder<SearchCategoriesController>(
              builder: (getController) {
                return Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    VerticalSpace(height: 10),
                      CustomTextFormField(
                        hintText: 'Search all items',
                        width: size.width,
                        controller: controller.inputController.value,
                      margin: getMargin(
                        left: 24,
                        right: 24
                      ),
                        prefix:Padding(
                                                  padding:
                                                      getPadding(left: 10,
                                                      right: 10),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgSearch,
                                                      height: getSize(20.00),
                                                      width: getSize(20.00))),
                        onFieldSubmitted: (val){
                          getController.onFieildSubmitted(val);

                        },
                        prefixConstraints:BoxConstraints(
                          maxHeight: 20,
                          maxWidth: 40
                        ),
                        suffix:
                        controller.isSearching.value? InkWell(
                            highlightColor: Colors.transparent,
                          onTap: (){
                            getController.onClearTap();
                          },
                          child: Icon(Icons.clear_rounded,
                          color:ColorConstant.bluegray300 ,),
                        ):
                        CustomButton(
                                        width: 120,
                                        text: "lbl_california".tr,
                                        margin: getMargin(
                                            top: 8, right: 8, bottom: 8),
                                        variant: ButtonVariant.OutlineGray90005,
                                        padding: ButtonPadding.PaddingAll10,
                                        fontStyle: ButtonFontStyle
                                            .NotoSansJPMedium12Gray902,
                                            onTap: (){
                                              Get.toNamed(AppRoutes.searchByMapScreen);
                                            },
                                        prefixWidget: Container(
                                            padding: getPadding(all: 4),
                                            margin: getMargin(right: 10),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.primary,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            10.00))),
                                                            
                                            child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgLocation12x12)
                                                    
                                                    )
                                                    )
                                

                      ),
                   
                  controller.isSearching.value? 
                  SearchAutoCompleteScreen():
                  
                  
                   Expanded(
                     child: Column(
                          mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                             padding: getPadding(left: 24, top: 26, right: 24),
                                child: Text("msg_browse_by_category".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: AppStyle.txtNotoSansJPBold16)),
                                     VerticalSpace(height: 16),
                          
                                     Expanded(
                          child: ListView.separated(
                            padding: getPadding(
                              left: 24,
                              right: 24,
                              bottom: 14
                            ),
                            itemCount: controller.exploreCategoriesList.length,
                            shrinkWrap: true,
                            separatorBuilder: (context, index) => VerticalSpace(height: 16),
                                     
                            itemBuilder:(context, index) {
                            
                            return  FadeInLeft(
                              child: InkWell(
                                      highlightColor: Colors.transparent,
                                  onTap: (){
                                                 Get.toNamed(AppRoutes.detailEventScreen);
                                              },
                                child: Container(
                                     decoration: AppDecoration.fillWhiteA700
                                          .copyWith(boxShadow: [
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
                                      ], borderRadius: BorderRadius.circular(16)),
                                      padding: getPadding(
                                        all: 12
                                      ),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                                height: getVerticalSize(96.00),
                                                width: getHorizontalSize(88.00),
                                              
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          12.00)),
                                                              child: CommonImageView(
                                                                  imagePath:
                                                                      controller.exploreCategoriesList[index].img,
                                                                  height:
                                                                      getVerticalSize(
                                                                          96.00),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          88.00),
                                                                  fit: BoxFit
                                                                      .fill))),
                                                      Align(
                                                          alignment:
                                                              AlignmentDirectional.topStart,
                                                          child: Container(
                                                              margin: getMargin(
                                                                  left: 8,
                                                                  top: 8,
                                                                  right: 10,
                                                                  bottom: 10),
                                                              decoration: AppDecoration
                                                                  .fillWhiteA700
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder13),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                8,
                                                                            top:
                                                                                2,
                                                                            right:
                                                                                8),
                                                                        child: Text(
                                                                            controller.exploreCategoriesList[index].day
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.start,
                                                                            style: AppStyle.txtNotoSansJPBold12Gray902)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                9,
                                                                            right:
                                                                                9,
                                                                            bottom:
                                                                                1),
                                                                        child: Text(
                                                                              controller.exploreCategoriesList[index].month,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.start,
                                                                            style: AppStyle.txtNotoSansJPMedium8))
                                                                  ])))
                                                    ])),
                                          HorizontalSpace(width: 12),
                                            Expanded(
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .center,
                                                        child: Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    200.00),
                                                            margin: getMargin(
                                                                right: 2),
                                                            child: Text(
                                                                 controller.exploreCategoriesList[index].title,
                                                                maxLines:
                                                                    null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: AppStyle
                                                                    .txtNotoSansJPBold14))),
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 19),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                children: [
                                                                  CommonImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgLocation16x16,
                                                                      height: getSize(
                                                                          16.00),
                                                                      width: getSize(
                                                                          16.00)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left: 4,
                                                                        ),
                                                                      child: Text(
                                                                           controller.exploreCategoriesList[index].location,
                                                                          overflow:
                                                                              TextOverflow
                                                                                  .ellipsis,
                                                                          textAlign:
                                                                              TextAlign
                                                                                  .start,
                                                                          style: AppStyle
                                                                              .txtNotoSansJPMedium12Bluegray301)),
                                                                ],
                                                              ),
                                                             
                                                             
                                                              CustomButton(
                                                                  width: 64,
                                                                  text:
                                                                        controller.exploreCategoriesList[index].price,
                                                                 
                                                                  variant:
                                                                      ButtonVariant
                                                                          .FillGray102,
                                                                  shape: ButtonShape
                                                                      .RoundedBorder8,
                                                                  padding:
                                                                      ButtonPadding
                                                                          .PaddingAll6,
                                                                  fontStyle:
                                                                      ButtonFontStyle
                                                                          .NotoSansJPMedium12)
                                                            ]))
                                                  ]),
                                            )
                                        
                                        
                                        
                                          ])),
                              ),
                            );
                                     
                          },),
                                     ),
                        ],
                      ),
                   )
                 



                    ]);
              }
            )));
  }

  onTapArrowleft11() {
    Get.back();
  }
}
