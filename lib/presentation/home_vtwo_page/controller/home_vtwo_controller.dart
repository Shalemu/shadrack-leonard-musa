import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:mauzoApp/models/cart_model.dart';
import 'package:mauzoApp/presentation/home_vtwo_page/cart.dart';
import 'package:mauzoApp/presentation/home_vtwo_page/models/home_vtwo_model.dart';
import 'package:mauzoApp/services/database_helper.dart';

class HomeVtwoController extends GetxController {
  // Observable variables
  var selectedCategory = 0.obs;

  // Maps to store quantities, cart items, images, and prices
  RxMap<String, int> quantities = <String, int>{}.obs; // Initialize with empty map
  RxMap<String, int> cartItems = <String, int>{}.obs; // Initialize with empty map
  RxMap<String, String> itemImages = <String, String>{}.obs; // Initialize with empty map
  RxMap<String, double> itemPrices = <String, double>{}.obs; // Initialize with empty map

  TextEditingController searchController = TextEditingController();

  var homeVtwoModelObj;

  HomeVtwoController(Rx<HomeVtwoModel> obs);

  // Method to add item to the cart
  void addToCart(String itemName, String itemImage, double price) async {
    if (quantities.containsKey(itemName) && quantities[itemName]! > 0) {
      int itemQuantity = quantities[itemName]!;

      // Check if the item is already in the cart
      if (cartItems.containsKey(itemName)) {
        cartItems[itemName] = cartItems[itemName]! + itemQuantity;
      } else {
        cartItems[itemName] = itemQuantity;
        itemImages[itemName] = itemImage;
        itemPrices[itemName] = price;
      }

      // Create a Cart object
      Cart cartItem = Cart(
        transactionId: 2, // Example transaction ID
        itemId: 1, // Example item ID
        itemName: itemName,
        salePrice: price,
        price: price,
        img: itemImage,
        quantity: itemQuantity,
      );

      try {
        // Add cart item to the local database
        await DatabaseHelper.addCart(cartItem);

        // Reset the quantity in the UI
        quantities[itemName] = 0;
      } catch (e) {
        print("Error adding to cart: $e");
      }
    }
  }

  // Method to increment the quantity of an item
  void incrementQuantity(String itemName) {
    if (quantities.containsKey(itemName)) {
      quantities[itemName] = quantities[itemName]! + 1;
    } else {
      quantities[itemName] = 1;
    }
  }

  // Method to decrement the quantity of an item
  void decrementQuantity(String itemName) {
    if (quantities.containsKey(itemName) && quantities[itemName]! > 0) {
      quantities[itemName] = quantities[itemName]! - 1;
    }
  }

  // Method to get the quantity of a specific item
  int getQuantity(String itemName) {
    return quantities[itemName] ?? 0;
  }

  // Method to get the total number of items in the cart
  int getTotalCartItems() {
    int totalItems = 0;
    cartItems.forEach((key, value) {
      totalItems += value;
    });
    return totalItems;
  }

  // Method to get the price of an item
  double getItemPrice(String itemName) {
    return itemPrices[itemName] ?? 0.0;
  }

  // Method to get the image of an item
  String getItemImage(String itemName) {
    return itemImages[itemName] ?? '';
  }

  // Method to calculate the total price of all items in the cart
  double getTotalPrice() {
    double totalPrice = 0.0;
    cartItems.forEach((itemName, quantity) {
      totalPrice += (itemPrices[itemName] ?? 0.0) * quantity;
    });
    return totalPrice;
  }

  // Method to navigate to the cart page
  void goToCartPage() {
    Get.to(() => CartPage());
  }

  // Method to increment the quantity of an item in the cart
  void incrementCartItem(String itemName) {
    if (cartItems.containsKey(itemName)) {
      cartItems[itemName] = cartItems[itemName]! + 1;
    }
  }

  // Method to decrement the quantity of an item in the cart
  void decrementCartItem(String itemName) {
    if (cartItems.containsKey(itemName) && cartItems[itemName]! > 1) {
      cartItems[itemName] = cartItems[itemName]! - 1;
    } else {
      removeCartItem(itemName); // Remove the item if quantity is 1 or less
    }
  }

  // Method to remove an item from the cart
  void removeCartItem(String itemName) {
    cartItems.remove(itemName);
    itemImages.remove(itemName);
    itemPrices.remove(itemName);
  }

  // Method to clear all items from the cart
  void clearCart() {
    cartItems.clear();
    itemImages.clear();
    itemPrices.clear();
  }

  @override
  void onInit() {
    super.onInit();
    // Any initialization logic goes here
  }
}
