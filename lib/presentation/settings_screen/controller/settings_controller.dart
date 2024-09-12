import 'package:mauzoApp/core/app_export.dart';import 'package:mauzoApp/presentation/settings_screen/models/settings_model.dart';import 'package:flutter/material.dart';class SettingsController extends GetxController {TextEditingController itemController = TextEditingController();

TextEditingController itemOneController = TextEditingController();

Rx<SettingsModel> settingsModelObj = SettingsModel().obs;

RxBool isSelectedSwitch = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); itemController.dispose(); itemOneController.dispose(); } 
 }
