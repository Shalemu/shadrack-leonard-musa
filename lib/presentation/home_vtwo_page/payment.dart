import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';  // Import for date formatting
import 'package:mauzoApp/core/app_export.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_image.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_subtitle.dart';
import 'package:mauzoApp/widgets/app_bar/custom_app_bar.dart';
import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:mauzoApp/widgets/custom_drop_down.dart';
import 'package:mauzoApp/widgets/spacing.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final TextEditingController _dateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Initialize with the current date
    _dateController.text = DateFormat('MMM dd, yyyy').format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: CustomAppBar(
          height: getVerticalSize(56.00),
          leadingWidth: 48,
          leading: AppbarImage(
            height: getSize(24.00),
            width: getSize(24.00),
            svgPath: ImageConstant.imgClose,
            margin: EdgeInsets.only(left: 24, top: 15, bottom: 16),
            onTap: onTapClose,
          ),
          centerTitle: true,
          title: AppbarSubtitle(text: "lbl_payment".tr),
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: getPadding(top: 1),
                child: Padding(
                  padding: getPadding(top: 1),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: getVerticalSize(1.00),
                        width: double.infinity,
                        color: ColorConstant.gray101,
                      ),
                      Padding(
                        padding: getPadding(left: 24, top: 16, right: 24),
                        child: Text(
                          "lbl_date_range".tr,
                          style: AppStyle.txtNotoSansJPBold14,
                        ),
                      ),
                      InkWell(
                        highlightColor: Colors.transparent,
                        onTap: () {
                          _selectDate(context);
                        },
                        child: AbsorbPointer(
                          child: Container(
                            margin: getMargin(left: 24, top: 14, right: 24),
                            decoration: AppDecoration.fillGray100.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: getPadding(left: 16, top: 19, bottom: 15),
                                  child: Text(
                                    _dateController.text,
                                    style: AppStyle.txtNotoSansJPMedium14Gray902,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(top: 16, right: 16, bottom: 16),
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgCalendar14x14,
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(left: 24, top: 24, right: 24),
                        child: Text(
                          "lbl_payment_method".tr,
                          style: AppStyle.txtNotoSansJPBold14,
                        ),
                      ),
                      CustomDropDown(
                        width: double.infinity,
                        focusNode: FocusNode(),
                        icon: Container(
                          margin: getMargin(left: 30, right: 16),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgArrowdownBluegray301,
                          ),
                        ),
                        hintText: "lbl_select_payment_method".tr,
                        margin: getMargin(left: 24, top: 13, right: 24),
                        onChanged: (value) {
                          // Handle payment method change
                        },
                      ),
                      Padding(
                        padding: getPadding(left: 24, top: 24, right: 24),
                        child: Text(
                          "lbl_customer".tr,
                          style: AppStyle.txtNotoSansJPBold14,
                        ),
                      ),
                      Container(
                        margin: getMargin(left: 24, top: 13, right: 24),
                        decoration: AppDecoration.fillGray100.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                        ),
                        child: Padding(
                          padding: getPadding(left: 16, top: 15, bottom: 15),
                          child: Text(
                            "Select Customer",  // Placeholder text
                            style: AppStyle.txtNotoSansJPMedium14Gray902,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(left: 24, top: 24, right: 24),
                        child: Text(
                          "lbl_items".tr,
                          style: AppStyle.txtNotoSansJPBold14,
                        ),
                      ),
                  Container(
  width: double.infinity,  // Makes the container expand to the full width of its parent
  margin: getMargin(left: 24, top: 13, right: 24),
  decoration: AppDecoration.fillGray100.copyWith(
    borderRadius: BorderRadiusStyle.roundedBorder16,
  ),
  child: Padding(
    padding: getPadding(left: 18, top: 15, right: 18, bottom: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Items:",
              style: AppStyle.txtNotoSansJPMedium14Gray902,
            ),
            Expanded(
              child: Text(
                "Item Name",  // Replace with dynamic item name or data
                textAlign: TextAlign.right,  // Align text to the right if needed
                style: AppStyle.txtNotoSansJPMedium14Gray902,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Quantity:",
              style: AppStyle.txtNotoSansJPMedium14Gray902,
            ),
            Expanded(
              child: Text(
                "1",  // Replace with dynamic quantity or data
                textAlign: TextAlign.right,  // Align text to the right if needed
                style: AppStyle.txtNotoSansJPMedium14Gray902,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total:",
              style: AppStyle.txtNotoSansJPMedium14Gray902,
            ),
            Expanded(
              child: Text(
                "\$0.00",  // Replace with dynamic total amount
                textAlign: TextAlign.right,  // Align text to the right if needed
                style: AppStyle.txtNotoSansJPMedium14Gray902,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Discount:",
              style: AppStyle.txtNotoSansJPMedium14Gray902,
            ),
            Expanded(
              child: Text(
                "\$0.00",  // Replace with dynamic discount amount
                textAlign: TextAlign.right,  // Align text to the right if needed
                style: AppStyle.txtNotoSansJPMedium14Gray902,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Actual Price:",
              style: AppStyle.txtNotoSansJPMedium14Gray902,
            ),
            Expanded(
              child: Text(
                "\$0.00",  // Replace with dynamic actual price
                textAlign: TextAlign.right,  // Align text to the right if needed
                style: AppStyle.txtNotoSansJPMedium14Gray902,
              ),
            ),
          ],
        ),
      ],
    ),
  ),
),


                      VerticalSpace(height: 20),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: AppDecoration.fillWhiteA700,
              child: CustomButton(
                width: double.infinity,
                text: "lbl_confirm_payment".tr,
                margin: getMargin(left: 24, top: 10, right: 24, bottom: 20),
                shape: ButtonShape.RoundedBorder16,
                onTap: () {
                  // Handle payment confirmation
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onTapClose() {
    Get.back();
  }

  void _selectDate(BuildContext context) async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (selectedDate != null && selectedDate != DateTime.now()) {
      setState(() {
        _dateController.text = DateFormat('MMM dd, yyyy').format(selectedDate);
      });
    }
  }
}
