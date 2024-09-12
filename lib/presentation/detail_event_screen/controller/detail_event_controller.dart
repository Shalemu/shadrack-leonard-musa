import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/presentation/detail_event_screen/models/detail_event_model.dart';

class DetailEventController extends GetxController {
  Rx<DetailEventModel> detailEventModelObj = DetailEventModel().obs;
  RxBool isFollowing=false.obs;
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
onFollowTap(){
  isFollowing=RxBool(true);
  update();
}
}
