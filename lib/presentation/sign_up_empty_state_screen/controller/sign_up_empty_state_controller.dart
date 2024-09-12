import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/presentation/sign_up_empty_state_screen/models/sign_up_empty_state_model.dart';
import 'package:flutter/material.dart';

class SignUpEmptyStateController extends GetxController {
  TextEditingController inputController = TextEditingController();

  TextEditingController inputOneController = TextEditingController();

  TextEditingController inputTwoController = TextEditingController();

  Rx<SignUpEmptyStateModel> signUpEmptyStateModelObj =
      SignUpEmptyStateModel().obs;

  Rx<bool> isShowPassword = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputController.dispose();
    inputOneController.dispose();
    inputTwoController.dispose();
  }
}
