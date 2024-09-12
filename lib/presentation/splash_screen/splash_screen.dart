import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/presentation/splash_screen/controller/splash_screen_controller.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Center(
          child: Image.asset(
            'assets/images/mauzo360.png', // Path to your logo asset
            width: 200, // Adjust the width as needed
            height: 200, // Adjust the height as needed
          ),
        ),
      ),
    );
  }
}
