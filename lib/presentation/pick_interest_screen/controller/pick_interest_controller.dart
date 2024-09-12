import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/presentation/pick_interest_screen/models/pick_interest_model.dart';
import 'package:flutter/material.dart';

class PickInterestController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<PickInterestModel> pickInterestModelObj = PickInterestModel().obs;
 List<String> tags = [] ;
RxList<String> options = RxList([
  'Birthday party', 'Sports & Fitness', 'Music',
  'Film & Entertainment', 'Charity & Causes', 'Technology',
  'Concert', 'Personal Development', 'Seminar', 'Food & Drink',
  
]);

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }

onChipTap(List<String> val){
   tags=val ;
   update();
}

}
