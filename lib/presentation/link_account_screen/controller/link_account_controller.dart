import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/presentation/link_account_screen/models/link_account_model.dart';

class LinkAccountController extends GetxController {
  Rx<LinkAccountModel> linkAccountModelObj = LinkAccountModel().obs;

  RxBool isSelectedGoogleSwitch = false.obs;
  RxBool isSelectedAppleSwitch = false.obs;
  RxBool isSelectedTwitterSwitch = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
