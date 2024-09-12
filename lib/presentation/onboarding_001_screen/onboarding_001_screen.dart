import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/onboarding_001_controller.dart';
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/custom_button.dart';

class Onboarding001Screen extends GetWidget<Onboarding001Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Column(
          children: [
            Expanded(
              child: PageView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                onPageChanged: (index) {
                  controller.currentPage.value = index;
                },
                controller: controller.pageController,
                children: [
                  OnboardingPage(
                    imagePath: 'assets/multiple sale-points.png',
                    title: "Multiple sale-points",
                    description: "Access data from anywhere at anytime",
                  ),
                  OnboardingPage(
                    imagePath: 'assets/sale.png',
                    title: "Ease sales at low cost",
                    description: "Use as much as you want, at same price",
                 
                  ),
                  OnboardingPage(
                    imagePath: 'assets/offline.png',
                    title: "Offline Acess",
                    description: "Save your data, access offline, anywhere",
                  ),
                  OnboardingPage(
                    imagePath: 'assets/images/mauzo360.png',
                    title: "GROW YOUR BUSINESS",
                    description: "Keep updated financial records to perform strategic business decisions.",
                    // buttonText: "GET STARTED",
                    // onButtonTap: () {
                    //   Get.toNamed(AppRoutes.loginEmptyStateScreen);
                    // },
                  ),
                ],
              ),
            ),
            // Page indicator and button
            Obx(() => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: RowIndicator(currentPage: controller.currentPage.value),
                ),
                Container(
                  color: Colors.transparent,
                  child: Center(
                    child: CustomButton(
                      width: 324,
                      text: controller.currentPage.value == 3 ? 'GET STARTED' : 'NEXT',
                      margin: getMargin(left: 25, top: 20, right: 24, bottom: 20),
                      shape: ButtonShape.RoundedBorder16,
                      alignment: Alignment.center,
                      fontStyle: ButtonFontStyle.NotoSansJPMedium14,
                      onTap: () {
                        if (controller.currentPage.value == 3) {
                          // Navigate to the login page
                          Get.toNamed(AppRoutes.loginEmptyStateScreen);
                        } else {
                          // Move to the next page
                          controller.pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                        }
                      },
                    ),
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String? buttonText;
  final VoidCallback? onButtonTap;

  const OnboardingPage({
    required this.imagePath,
    required this.title,
    required this.description,
    this.buttonText,
    this.onButtonTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(flex: 3),
        Image.asset(
          imagePath,
          width: 150,
          height: 100,
        ),
        const SizedBox(height: 50),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.blueGrey,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          description,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
        const Spacer(flex: 2),
        if (buttonText != null && onButtonTap != null)
          CustomButton(
            width: 324,
            text: buttonText!,
            margin: getMargin(left: 25, top: 46, right: 24, bottom: 5),
            shape: ButtonShape.RoundedBorder16,
            alignment: Alignment.center,
            fontStyle: ButtonFontStyle.NotoSansJPMedium14,
            onTap: onButtonTap!,
          ),
      ],
    );
  }
}

class RowIndicator extends StatelessWidget {
  final int currentPage;

  const RowIndicator({required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(4, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Icon(
            currentPage == index
                ? Icons.circle
                : Icons.circle_outlined,
            size: 10,
            color: currentPage == index ? Colors.orange[200] : Colors.grey,
          ),
        );
      }),
    );
  }
}
