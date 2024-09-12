import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/presentation/home_vtwo_container_screen/models/home_vtwo_container_model.dart';
import 'package:mauzoApp/widgets/custom_bottom_bar.dart';

class HomeVtwoContainerController extends GetxController {
  Rx<HomeVtwoContainerModel> homeVtwoContainerModelObj =
      HomeVtwoContainerModel().obs;

  Rx<BottomBarEnum> type = BottomBarEnum.Home.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {
    super.onInit();
  }
}
