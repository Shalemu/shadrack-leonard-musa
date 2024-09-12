import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/presentation/detail_organizer_collection_screen/models/detail_organizer_collection_model.dart';

import '../models/list2_item_model.dart';

class DetailOrganizerCollectionController extends GetxController {
  Rx<DetailOrganizerCollectionModel> detailOrganizerCollectionModelObj =
      DetailOrganizerCollectionModel().obs;
    

       RxList<List2ItemModel> organizersList =RxList<List2ItemModel>([
        List2ItemModel(title: 'Rolex Tappy Tour', img: ImageConstant.image1,
        isFollowing:false
        ),
        List2ItemModel(title: 'Dance Party 20s', img: ImageConstant.image2,
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
  }

  onFollowBtnTap(int index){
 organizersList[index].isFollowing=true;
         update();

}
}
