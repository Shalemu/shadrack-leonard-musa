import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mauzoApp/core/utils/image_constant.dart';
import 'package:mauzoApp/core/utils/size_utils.dart';
import 'package:mauzoApp/presentation/favorites_page/controller/favorites_controller.dart';
import 'package:mauzoApp/theme/app_style.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_image.dart';
import 'package:mauzoApp/widgets/app_bar/appbar_subtitle.dart';
import 'package:mauzoApp/widgets/app_bar/custom_app_bar.dart';

class CartPage extends StatelessWidget {
  final FavoritesController controller = Get.find<FavoritesController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Colors.white, // Changed to a lighter background color
        appBar: CustomAppBar(
          height: getVerticalSize(56.00),
          leadingWidth: 56,
          leading: AppbarImage(
            height: getSize(32.00),
            width: getSize(32.00),
            svgPath: ImageConstant.imgArrowleft,
            margin: EdgeInsets.only(left: 24, top: 12, bottom: 12),
            onTap: onTapArrowleft14,
          ),
          centerTitle: true,
          title: AppbarSubtitle(text: "Cart"), // Adjusted title for clarity
        ),
        body: Padding(
          padding: getPadding(top: 16),
          child: Obx(() {
            final cartItems = controller.cartItemList;
            return ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return _buildCartItem(item);
              },
            );
          }),
        ),
      ),
    );
  }

  Widget _buildCartItem(CartItem item) {
    return Padding(
      padding: getPadding(left: 22, right: 22, top: 13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: getVerticalSize(96.00),
                width: getHorizontalSize(88.00),
                margin: getMargin(left: 12, top: 12, bottom: 12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(getHorizontalSize(12.00)),
                  child: Image.network(
                    item.imagePath,
                    height: getVerticalSize(96.00),
                    width: getHorizontalSize(88.00),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(left: 12, top: 20, right: 12, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: AppStyle.txtNotoSansJPBold14,
                    ),
                    SizedBox(height: 10),
                    Text(
                      item.price,
                      style: AppStyle.txtNotoSansJPMedium14Gray902,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Quantity: ${item.quantity}',
                      style: AppStyle.txtNotoSansJPMedium14Gray902,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(thickness: 1, color: Colors.grey[300]),
        ],
      ),
    );
  }

  void onTapArrowleft14() {
    Get.back();
  }
}
