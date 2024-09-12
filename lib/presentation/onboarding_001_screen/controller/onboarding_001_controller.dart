import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mauzoApp/presentation/onboarding_001_screen/models/onboarding_001_model.dart';

class Onboarding001Controller extends GetxController {
  Rx<Onboarding001Model> onboarding001ModelObj = Onboarding001Model().obs;
  RxInt currentPage = 0.obs;
  final PageController pageController = PageController();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
