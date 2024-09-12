import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/presentation/choose_location_screen/models/choose_location_model.dart';
import 'package:flutter/material.dart';

class ChooseLocationController extends GetxController {
  TextEditingController inputController = TextEditingController();

  Rx<ChooseLocationModel> chooseLocationModelObj = ChooseLocationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputController.dispose();
  }
}
