import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/presentation/push_notification_screen/models/listnotification_item_model.dart';
import 'package:mauzoApp/presentation/push_notification_screen/models/push_notification_model.dart';

class PushNotificationController extends GetxController {
  Rx<PushNotificationModel> pushNotificationModelObj =
      PushNotificationModel().obs;
List<ListnotificationItemModel>pushNotificationList =
[
  ListnotificationItemModel(
    title: "msg_get_alert_in_your".tr,
  
   subtitle: "msg_get_alert_in_your2".tr, img: ImageConstant.pushNoti1,
    switchVal: false),
  ListnotificationItemModel(
    title: "msg_get_alert_in_your3".tr,
  
   subtitle: "msg_get_alert_in_your4".tr, img: ImageConstant.pushNoti2,
    switchVal: true),
  ListnotificationItemModel(
    title: "lbl_newsletters".tr,
  
   subtitle: "msg_receive_emails_with".tr, img: ImageConstant.pushNoti3,
    switchVal: true),
  ListnotificationItemModel(
    title: "msg_followed_organizer".tr,
  
   subtitle: "msg_get_notified_when".tr, img: ImageConstant.pushNoti4,
    switchVal: true),
  ListnotificationItemModel(
    title: "lbl_reminders_email".tr,
  
   subtitle: "msg_allow_set_reminders".tr, img: ImageConstant.pushNoti5,
    switchVal: false),
  ListnotificationItemModel(
    title: "msg_liked_events_email".tr,
  
   subtitle:"msg_get_alerts_when".tr, img: ImageConstant.pushNoti6,
    switchVal: false),
  ListnotificationItemModel(
    title:"msg_followed_collections".tr,
  
   subtitle: "msg_known_when_events".tr, img: ImageConstant.pushNoti7,
    switchVal: false),
].obs;
  RxBool isSelectedSwitch = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSwitchTap(bool val ,int index){
    pushNotificationList[index].switchVal=val;
    update();
  }
}
