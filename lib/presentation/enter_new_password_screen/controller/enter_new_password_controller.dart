import 'package:mauzoApp/core/app_export.dart';import 'package:mauzoApp/presentation/enter_new_password_screen/models/enter_new_password_model.dart';import 'package:flutter/material.dart';class EnterNewPasswordController extends GetxController {TextEditingController inputController = TextEditingController();

Rx<EnterNewPasswordModel> enterNewPasswordModelObj = EnterNewPasswordModel().obs;

Rx<bool> isShowPassword = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); inputController.dispose(); } 
 }
