import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animate_do/animate_do.dart';
import 'package:mauzoApp/core/utils/size_utils.dart';
import 'package:mauzoApp/presentation/home_vtwo_page/controller/home_vtwo_controller.dart';
import 'package:mauzoApp/presentation/home_vtwo_page/payment.dart';
import 'package:mauzoApp/theme/app_decoration.dart';
import 'package:mauzoApp/widgets/custom_button.dart';
import 'package:mauzoApp/widgets/custom_text_form_field.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeVtwoController controller = Get.find(); // Retrieve the controller

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Get.back(),
            ),
            centerTitle: true,
            title: Text(
              'Cart',
              style: TextStyle(
                color: Colors.black, 
                fontWeight: FontWeight.bold, 
                fontSize: 20,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16),
   child: CircleAvatar(
  radius: 14,
  backgroundColor: Colors.transparent, // Outer color
  child: IconButton(
    padding: EdgeInsets.zero, // Removes extra padding around the icon
    icon: Icon(Icons.cancel, size: 14, color: Colors.red), // Cancel icon with black color
    onPressed: () {
      // Clear the cart items
      HomeVtwoController controller = Get.find();
      controller.cartItems.clear(); // Clear all items in the cart
      controller.itemImages.clear(); // Clear associated images
      controller.itemPrices.clear(); // Clear associated prices
      // Optionally show a message
  
    },
  ),
),


            )
            ]
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomTextFormField(
                hintText: 'Search cart items',
                controller: TextEditingController(), // Add search controller if needed
                prefix: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.search, color: Colors.grey),
                ),
                // suffix: IconButton(
                //   icon: Icon(Icons.clear, color: Colors.grey),
                //   onPressed: () {
                //     // Implement clear search action
                //   },
                // )
              ),
            ),
            Expanded(
              child: Obx(() {
                if (controller.cartItems.isEmpty) {
                  return Center(
                    child: Text(
                      'No items in the cart', 
                      style: TextStyle(fontSize: 18),
                    ),
                  );
                }

                return ListView.builder(
                  padding: EdgeInsets.all(16),
                  itemCount: controller.cartItems.length,
                  itemBuilder: (context, index) {
                    final itemName = controller.cartItems.keys.elementAt(index);
                    final quantity = controller.cartItems[itemName]!;
                    final itemPrice = controller.getItemPrice(itemName); // Fetch the item price
                    final itemImage = controller.getItemImage(itemName); // Fetch the image path

                    return FadeInLeft(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 16),
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            // Product Image
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: itemImage.isNotEmpty
                                  ? Image.asset(
                                      itemImage, // Display the image
                                      fit: BoxFit.cover,
                                    )
                                  : Center(child: Icon(Icons.image, color: Colors.red[600])),
                            ),
                            SizedBox(width: 12),
                            // Product Name, Price, and Quantity in One Column
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Item Name
                                  Text(
                                    itemName,
                                    style: TextStyle(
                                      fontSize: 16, 
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  // Item Price
                                  Text(
                                    'Price: \$${itemPrice.toStringAsFixed(2)}', // Display the price
                                    style: TextStyle(
                                      fontSize: 14, 
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  // Quantity
                                  Text(
                                    'Quantity: $quantity',
                                    style: TextStyle(
                                      fontSize: 14, 
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 12),
                            // Increase/Decrease Buttons and Quantity
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                // Decrease/Remove Button
                                CircleAvatar(
                                  radius: 14,
                                  backgroundColor: Colors.orange[200],
                                  child: IconButton(
                                    icon: quantity > 1
                                        ? Icon(Icons.remove, size: 14, color: Colors.black54)
                                        : Icon(Icons.delete, size: 14, color: Colors.red),
                                    onPressed: () {
                                      if (quantity > 1) {
                                        controller.decrementCartItem(itemName);
                                      } else {
                                        controller.removeCartItem(itemName);
                                      }
                                    },
                                  ),
                                ),
                                SizedBox(width: 8),
                              
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '$quantity',
                                      style: TextStyle(
                                        fontSize: 14, 
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8),
                                
                                CircleAvatar(
                                  radius: 14,
                                  backgroundColor: Colors.orange[200],
                                  child: IconButton(
                                    icon: Icon(Icons.add, size: 14, color: Colors.black54),
                                    onPressed: () {
                                      controller.incrementCartItem(itemName);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }),
            ),
           Container(
  width: double.infinity,
  decoration: AppDecoration.fillWhiteA700,
  child: CustomButton(
    width: size.width,
    text: "lbl_next".tr,
    margin: getMargin(left: 24, top: 10, right: 24, bottom: 20),
    shape: ButtonShape.RoundedBorder16,
    fontStyle: ButtonFontStyle.NotoSansJPMedium14, 
    onTap: () async {
      // Navigate to Payment Process Page and wait for a result
      final result = await Get.to(() => PaymentPage());

      // Handle the result when coming back from Payment Process Page
      if (result != null && result == 'success') {
        // Payment was successful, handle any post-payment logic here
        print('Payment Successful');
        // Maybe navigate to a confirmation page or update the UI
      } else {
        // Payment failed or was canceled
        print('Payment Canceled or Failed');
      }
    },
  ),
)

          ],
        ),
      ),
    );
  }
}
