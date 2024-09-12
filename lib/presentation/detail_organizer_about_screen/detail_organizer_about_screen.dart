import 'package:mauzoApp/widgets/spacing.dart';
import 'package:readmore/readmore.dart';

import 'controller/detail_organizer_about_controller.dart';
import 'package:mauzoApp/core/app_export.dart';

import 'package:flutter/material.dart';

class DetailOrganizerAboutScreen
    extends GetWidget<DetailOrganizerAboutController> {
  @override
  Widget build(BuildContext context) {
    return Column(
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


    );
 
 
  }

 
}
