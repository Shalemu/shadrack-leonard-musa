import '../about_screen/widgets/listlocation_item_widget.dart';
import 'controller/about_controller.dart';
import 'models/listlocation_item_model.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_circleimage.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_subtitle.dart';
import 'package:mauzoApp/widgets/app_bar/custom_app_bar.dart';
import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AboutScreen extends GetWidget<AboutController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        appBar: CustomAppBar(
          
          height: getVerticalSize(
            70.00,
          ),
          leadingWidth: 48,
          leading: Padding(
            padding: getPadding(
              left: 24,

             
            ),
            child: InkWell(
              onTap: (){
                Get.back();
              },
              child: Icon(
               Icons.clear_rounded,
               color: ColorConstant.gray900,
            
               
              
              ),
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle(
            text: "lbl_about".tr,
          ),
          actions: [
            Container(
              margin: getMargin(
                left: 24,
                top: 12,
                right: 24,
                bottom: 12,
              
             
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppbarCircleimage(
                    imagePath: ImageConstant.imgImg86x80,
                  ),
                ],
              ),
            ),
          ],
          styleType: Style.bgFillWhiteA700,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: getVerticalSize(
                    220.00,
                  ),
                  width: size.width,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: CommonImageView(
                          imagePath: ImageConstant.imgImg220x375,
                          height: getVerticalSize(
                            220.00,
                          ),
                          width: getHorizontalSize(
                            375.00,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            left: 28,
                           
                            right: 26,
                           
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: getHorizontalSize(
                                  319.00,
                                ),
                                child: Text(
                                  "msg_evenline_bringing".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtNotoSansJPBold24WhiteA700,
                                ),
                              ),
                              CustomButton(
                                width: 128,
                                text: "lbl_join_evenline".tr,
                                margin: getMargin(
                                 
                                  top: 26,
                                 
                                ),
                                padding: ButtonPadding.PaddingAll10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                margin: getMargin(
                  left: 24,
                  top: 24,
                  right: 24,
                ),
                decoration: AppDecoration.fillWhiteA700.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: getHorizontalSize(
                          279.00,
                        ),
                        margin: getMargin(
                          left: 16,
                          top: 20,
                          right: 16,
                          bottom: 17,
                        ),
                        child: Text(
                          "msg_evenline_is_a_global".tr,
                          maxLines: null,
                          textAlign: TextAlign.start,
                          style: AppStyle.txtNotoSansJPRegular12Gray902,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 24,
                    top: 26,
                    right: 24,
                  ),
                  child: Text(
                    "lbl_what_you_can_do".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: AppStyle.txtNotoSansJPBold16,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 13,
                  right: 24,
                  bottom: 48,
                ),
                child: Obx(
                  () => ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller
                        .aboutModelObj.value.listlocationItemList.length,
                    itemBuilder: (context, index) {
                      ListlocationItemModel model = controller
                          .aboutModelObj.value.listlocationItemList[index];
                      return ListlocationItemWidget(
                        model,
                      );
                    },
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
