import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/presentation/my_profile_page/models/my_profile_model.dart';
import 'package:flutter/material.dart';

class MyProfileController extends GetxController with GetSingleTickerProviderStateMixin{
  MyProfileController(this.myProfileModelObj);

  Rx<MyProfileModel> myProfileModelObj;
  late TabController tabController=
      Get.put(TabController(vsync: this, length: 3));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
     tabController.dispose();
  }
}
