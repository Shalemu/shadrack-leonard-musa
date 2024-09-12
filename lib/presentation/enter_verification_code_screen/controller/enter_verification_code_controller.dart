import 'package:mauzoApp/core/app_export.dart';import 'package:mauzoApp/presentation/enter_verification_code_screen/models/enter_verification_code_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';class EnterVerificationCodeController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<EnterVerificationCodeModel> enterVerificationCodeModelObj = EnterVerificationCodeModel().obs;

@override void codeUpdated() { otpController.value.text = code!; } 
@override void onInit() { super.onInit(); listenForCode(); } 
@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
