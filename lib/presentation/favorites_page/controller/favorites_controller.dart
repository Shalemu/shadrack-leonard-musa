import 'package:get/get.dart';
import 'package:mauzoApp/presentation/favorites_page/models/favorites_model.dart';

class FavoritesController extends GetxController {
  FavoritesController(this.favoritesModelObj);

  Rx<FavoritesModel> favoritesModelObj;

  // RxMap to store cart items with their quantities
  RxMap<String, CartItem> cartItems = <String, CartItem>{}.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  // Add an item to the cart
  void addToCart(String itemName, int quantity) {
    var item = favoritesModelObj.value.listItemList
        .firstWhere((item) => item.title == itemName);
    if (cartItems.containsKey(itemName)) {
      cartItems[itemName]!.quantity += quantity;
    } else {
      cartItems[itemName] = CartItem(
        title: item.title,
        imagePath: item.img,
        price: item.price,
        quantity: quantity,
      );
    }
    update();
  }

  // Remove an item from the cart
  void removeFromCart(String itemName) {
    cartItems.remove(itemName);
    update();
  }

  // Get a list of cart items
  List<CartItem> get cartItemList => cartItems.values.toList();

  // Get the quantity of a specific item in the cart
  int getQuantity(String itemName) {
    return cartItems.containsKey(itemName) ? cartItems[itemName]!.quantity : 0;
  }
}

// Define the CartItem class to represent each item in the cart
class CartItem {
  String title;
  String imagePath;
  String price;
  int quantity;

  CartItem({
    required this.title,
    required this.imagePath,
    required this.price,
    required this.quantity,
  });
}
