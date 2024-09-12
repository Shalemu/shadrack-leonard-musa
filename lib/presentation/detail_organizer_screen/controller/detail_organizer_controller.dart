import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/presentation/detail_organizer_screen/models/detail_organizer_model.dart';
import 'package:flutter/material.dart';

class DetailOrganizerController extends GetxController with GetSingleTickerProviderStateMixin {
  Rx<DetailOrganizerModel> detailOrganizerModelObj = DetailOrganizerModel().obs;
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
