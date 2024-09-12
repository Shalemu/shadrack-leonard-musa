import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/data/apiClient/api_client.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../../presentation/select_language_screen/controller/select_language_controller.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(ApiClient());
    Get.put(SelectLanguageController());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
