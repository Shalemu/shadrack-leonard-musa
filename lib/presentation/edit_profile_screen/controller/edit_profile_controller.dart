import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/presentation/edit_profile_screen/models/edit_profile_model.dart';
import 'package:flutter/material.dart';

class EditProfileController extends GetxController {
  TextEditingController inputController = TextEditingController();

  TextEditingController inputOneController = TextEditingController();

  Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;
  Rx<bool> isShowPassword = false.obs; 
  TextEditingController inputTwoController = TextEditingController(text: '00000000');
  

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputController.dispose();
    inputOneController.dispose();
  }
}
