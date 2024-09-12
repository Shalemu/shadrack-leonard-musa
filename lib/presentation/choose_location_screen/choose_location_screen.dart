import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:mauzoApp/widgets/spacing.dart';

import '../choose_location_screen/widgets/listtitle_two_item_widget.dart';
import 'controller/choose_location_controller.dart';
import 'models/listtitle_two_item_model.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ChooseLocationScreen extends GetWidget<ChooseLocationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  VerticalSpace(height: 30),
                  Padding(
                      padding: getPadding(left: 24, top: 12, right: 24),
                      child:  InkWell(
          highlightColor: Colors.transparent,
                          onTap: () {
                            onTapImgArrowleft();
                          },
                          child: CommonImageView(
                              svgPath: ImageConstant.imgArrowleft,
                              height: getSize(32.00),
                              width: getSize(32.00)))),
                 
                 VerticalSpace(height: 30),
                
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                            Padding(
                      padding: getPadding(left: 24, right: 24),
                      child: Text("msg_choose_your_location".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: AppStyle.txtNotoSansJPBold24)),
                 
                          Container(
                              width: getHorizontalSize(289.00),
                              margin: getMargin(left: 24, top: 11, right: 24),
                              child: Text("msg_let_s_find_your".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.start,
                                  style: AppStyle.txtNotoSansJPRegular14)),
                          CustomTextFormField(
                              width: size.width,
                              focusNode: FocusNode(),
                              controller: controller.inputController,
                              hintText: "msg_search_event_in".tr,
                              margin: getMargin(left: 24, top: 32, right: 24),
                              textInputAction: TextInputAction.done,
                              alignment: Alignment.center,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 20, top: 16, right: 10, bottom: 16),
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgLocation)),
                              prefixConstraints: BoxConstraints(
                                  minWidth: getSize(24.00), minHeight: getSize(24.00))),
                                   Container(
                                    padding: getPadding(
                          top: 14,
                          bottom: 14
                                    ),
                                    margin: getMargin(
                          left: 24,right: 24,
                          top: 14,
                                    
                                    ),
                                    decoration: DottedDecoration(
                      shape: Shape.box,
                      color: ColorConstant.gray200,
                      borderRadius: BorderRadius.circular(16), //remove this to get plane rectange
                                      ),
                                    child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                  margin: getMargin(right: 10),
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgLocation20x20)),
                                      HorizontalSpace(width: 12),
                                      Text("msg_use_my_current_location".tr,
                                      style: TextStyle(
                              color: ColorConstant.gray902,
                              fontSize: getFontSize(
                                14,
                              ),
                              fontFamily: 'Noto Sans JP',
                              fontWeight: FontWeight.w400,
                            ),
                                      )
                          ],
                                    ),
                                   ),
                                   
                                    
                                     
                          Padding(
                              padding: getPadding(left: 24, top: 26, right: 24),
                              child: Text("msg_popular_location".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: AppStyle.txtNotoSansJPBold14Bluegray301)),
                          
                          
                          VerticalSpace(height: 13),
                          Obx(() => ListView.separated(
                                      
                               padding: getPadding(
                                  left: 24, right: 24, bottom: 20),
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.chooseLocationModelObj.value
                                  .popularLocationsList.length,
                                  separatorBuilder:(context, index) => VerticalSpace(height: 16),
                              itemBuilder: (context, index) {
                                ListtitleTwoItemModel model = controller
                                    .chooseLocationModelObj
                                    .value
                                    .popularLocationsList[index];
                                return ListtitleTwoItemWidget(model);
                              })),
                        ],
                      ),
                    ),
                  )
              
              
                ])));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
