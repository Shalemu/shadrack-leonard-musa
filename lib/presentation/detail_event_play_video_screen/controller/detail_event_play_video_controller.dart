import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/presentation/detail_event_play_video_screen/models/detail_event_play_video_model.dart';

class DetailEventPlayVideoController extends GetxController {
  Rx<DetailEventPlayVideoModel> detailEventPlayVideoModelObj =
      DetailEventPlayVideoModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
