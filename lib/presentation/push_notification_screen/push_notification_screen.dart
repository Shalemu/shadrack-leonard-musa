import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_switch.dart';
import '../../widgets/spacing.dart';
import 'controller/push_notification_controller.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_image.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_subtitle.dart';
import 'package:mauzoApp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PushNotificationScreen extends GetWidget<PushNotificationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 56,
                leading: AppbarImage(
                    height: getSize(32.00),
                    width: getSize(32.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin:EdgeInsets.only(left: 24, top: 12, bottom: 12),
                    onTap: onTapArrowleft23),
                centerTitle: true,
                title: AppbarSubtitle(text: "msg_push_notification".tr)),
            body: Padding(
                padding: getPadding(left: 24, top: 24, right: 24, bottom: 20),
                child: GetBuilder<PushNotificationController>(
                  
                  builder: (getController) => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(327.00),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray101));
                    },
                    itemCount:getController.pushNotificationList.length ,
                    itemBuilder: (context, index) {
                     
                      return InkWell(
                        highlightColor: Colors.transparent,
                        onTap: (){
                           getController.onSwitchTap(getController
                          .pushNotificationList[index].switchVal, index);
                        },
                        child: Padding(
                            padding: getPadding(
                              top: 20.0,
                              bottom: 20.0,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      CustomIconButton(
                                        height: 48,
                                        width: 48,
                                        child: CommonImageView(
                                          svgPath: getController
                            .pushNotificationList[index].img,
                                        ),
                                      ),
                                    
                                    HorizontalSpace(width: 16),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                        Text(
                         getController
                            .pushNotificationList[index].title,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: AppStyle.txtNotoSansJPBold12Gray902,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 4,
                            right: 1,
                          ),
                          child: Text(
                            getController
                            .pushNotificationList[index].subtitle,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: AppStyle.txtNotoSansJPRegular10,
                          ),
                        ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                CustomSwitch(
                                    margin: getMargin(
                                      
                                      top: 12,
                                      bottom: 12,
                                    ),
                                    value:getController
                            .pushNotificationList[index].switchVal,
                                    onChanged: (value) {
                                     getController.onSwitchTap(value, index);
                                    },
                                  ),
                                
                              ],
                            ),
                          ),
                      );
  
                    })))));
  }

  onTapArrowleft23() {
    Get.back();
  }
}
