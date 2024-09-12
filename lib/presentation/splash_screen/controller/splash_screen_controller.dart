import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/presentation/splash_screen/models/splash_screen_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> onboarding001ModelObj = SplashModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(AppRoutes.onboarding001Screen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
