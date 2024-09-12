import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/presentation/follow_organizer_screen/models/follow_organizer_model.dart';
import 'package:flutter/material.dart';

class FollowOrganizerController extends GetxController {
  TextEditingController searchController = TextEditingController();

  // Rx<FollowOrganizerModel> followOrganizerModelObj = FollowOrganizerModel().obs;
   RxList<FollowOrganizerModel> organizersList =


      RxList<FollowOrganizerModel>([
        FollowOrganizerModel(title: 'Rolex Tappy Tour', img: ImageConstant.image1,
        isFollowing:false
        ),
        FollowOrganizerModel(title: 'Dance Party 20s', img: ImageConstant.image2,
        isFollowing:false
        ),
       
       
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

onFollowBtnTap(int index){
 organizersList[index].isFollowing=true;
         update();

}

}
