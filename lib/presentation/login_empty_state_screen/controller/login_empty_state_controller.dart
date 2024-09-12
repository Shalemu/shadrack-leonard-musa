import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/presentation/login_empty_state_screen/models/login_empty_state_model.dart';

class LoginEmptyStateController extends GetxController {
  TextEditingController inputController = TextEditingController();
  TextEditingController inputOneController = TextEditingController();
  
  Rx<LoginEmptyStateModel> loginEmptyStateModelObj = LoginEmptyStateModel().obs;
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
  }

  void onTapButton(BuildContext context) async {
    if (Form.of(context).validate()) {
      final username = inputController.text;
      final password = inputOneController.text;

      final url = Uri.parse('https://127.0.0.1/mauzo360/app-auth');  
      final headers = {'Content-Type': 'application/json'};
      final body = jsonEncode({
        'username': username,
        'password': password,
      });

      try {
        final response = await http.post(url, headers: headers, body: body);

        if (response.statusCode == 200) {
          final data = jsonDecode(response.body);
          // Handle successful authentication here
          print('Login successful: $data');
          Get.offNamedUntil(AppRoutes.homeVtwoContainerScreen, (route) => false);
        } else {
          // Handle failed authentication
          print('Login failed: ${response.body}');
          Get.snackbar('Login Failed', 'Please check your credentials and try again.');
        }
      } catch (error) {
        print('Error: $error');
        Get.snackbar('Error', 'An error occurred during login.');
      }
    } else {
      Get.snackbar('Validation Error', 'Please enter valid credentials.');
    }
  }
}
