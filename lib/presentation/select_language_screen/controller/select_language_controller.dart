import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/presentation/select_language_screen/models/select_language_model.dart';
import 'package:flutter/material.dart';

class SelectLanguageController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SelectLanguageModel> selectLanguageModelObj = SelectLanguageModel().obs;
  Locale? locale=Get.deviceLocale;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }

  void changeLang (String langCode){
   locale=Locale(langCode); 
    Get.updateLocale(locale!);
  }
}
