import 'package:mauzoApp/presentation/search_categories_page/controller/search_categories_controller.dart';
import 'package:mauzoApp/widgets/spacing.dart';

import 'package:mauzoApp/core/app_export.dart';

import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:flutter/material.dart';
//ignore: must_be_immutable
class SearchAutoCompleteScreen extends StatelessWidget {
  var controller = Get.find<SearchCategoriesController>();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  VerticalSpace(height: 22),
                  
                    Container(
                height: getVerticalSize(40),
                child: GetBuilder<SearchCategoriesController>(
                  builder: (getController) {
                    return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: getPadding(
                       
                          left: 24,
                          right: 24
                      ),
                      shrinkWrap: true,
                      itemCount:controller.categoryList.length,
                      separatorBuilder: (context, index) => HorizontalSpace(width: 15),
                      itemBuilder:(context, index) {
                        
                        return    InkWell(
          highlightColor: Colors.transparent,
                          onTap: (){
                            getController.onCategoryListItemTap(index);

                          },
                          child: Container(
                              decoration:controller.selectedCategory.value==index? AppDecoration.fillprimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder13,
                              ):AppDecoration.txtFillGray100.copyWith(
                                borderRadius: BorderRadiusStyle.txtRoundedBorder12,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                controller.selectedCategory.value==index?  Padding(
                                    padding: getPadding(
                                      left: 16,
                                      top: 12,
                                      bottom: 12,
                                    ),
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgRewind,
                                      height: getSize(
                                        16.00,
                                      ),
                                      width: getSize(
                                        16.00,
                                      ),
                                    ),
                                  ):HorizontalSpace(width: 14),
                                  Padding(
                                    padding: getPadding(
                                      left: 4,
                                      top: 12,
                                      right: 16,
                                      bottom: 9,
                                    ),
                                    child: Text(
                                      controller.categoryList[index],
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style:controller.selectedCategory.value==index? AppStyle.txtNotoSansJPBold12:AppStyle.txtNotoSansJPRegular12Gray902,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        );
                        
                      },
                     
                    );
                  }
                ),
              ),
            
                   
                   
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: getPadding(left: 24, top: 24, right: 24),
                            child: Text("msg_popular_searches".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: AppStyle.txtNotoSansJPBold16))),
                   
                   VerticalSpace(height: 22),
                    Expanded(
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                           padding:
                              getPadding(left: 24, right: 24,),
                              shrinkWrap: true,
                              itemCount:controller.exploreCategoriesList.length,
                        itemBuilder: (context, index) {
                          return  Container(
                            margin: getMargin(right: 2, bottom: 12),
                            decoration: AppDecoration.fillWhiteA700
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder16,
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
                                        padding: getPadding(
                                          left: 12,
                                          right: 12
                                        ),
                                        
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                      height: getVerticalSize(96.00),
                                      width: getHorizontalSize(88.00),
                                      margin:
                                          getMargin(top: 12, bottom: 12),
                                      child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            Align(
                                                alignment:
                                                    Alignment.centerLeft,
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
                                                        fit:
                                                            BoxFit.cover))),
                                           
                                           
                                            Align(
                                                alignment:
                                                    Alignment.topLeft,
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
                                                              padding:
                                                                  getPadding(
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
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: AppStyle
                                                                      .txtNotoSansJPBold12Gray902)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left:
                                                                          8,
                                                                      right:
                                                                          8,
                                                                      bottom:
                                                                          1),
                                                              child: Text(
                                                                  controller.exploreCategoriesList[index].month,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: AppStyle
                                                                      .txtNotoSansJPMedium8))
                                                        ])))
                                          ])),
                                 
                                 HorizontalSpace(width: 10),
                                  Expanded(
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                               controller.exploreCategoriesList[index].title,
                                              maxLines: null,
                                              textAlign:
                                                  TextAlign.start,
                                              style: AppStyle
                                                  .txtNotoSansJPBold14),
                                          Padding(
                                              padding:
                                                  getPadding(top: 19,
                                                  bottom: 12),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Padding(
                                                            padding:
                                                                getPadding(
                                                                    top: 8,
                                                                    bottom:
                                                                        8),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgLocation16x16,
                                                                height:
                                                                    getSize(
                                                                        16.00),
                                                                width: getSize(
                                                                    16.00))),
                                                        Padding(
                                                            padding:
                                                                getPadding(
                                                                    left: 4,
                                                                    top: 8,
                                                                    bottom:
                                                                        5),
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
                                                        text:  controller.exploreCategoriesList[index].price,
                                                       
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
                                ]));
                      
                        },
                      
                      ),
                    )
                 
                  
                  ]),
    );
  
  }

  onTapArrowleft12() {
    Get.back();
  }
}
