import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/presentation/privacy_policy_screen/models/privacy_policy_model.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<PrivacyPolicyModel> privacyPolicyModelObj = PrivacyPolicyModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
