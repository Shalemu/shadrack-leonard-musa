import 'package:flutter/material.dart';
import 'package:mauzoApp/models/cart_model.dart'; // Cart model
import 'package:mauzoApp/services/database_helper.dart'; // DatabaseHelper for SQLite

class ViewCartPage extends StatefulWidget {
  @override
  _ViewCartPageState createState() => _ViewCartPageState();
}

class _ViewCartPageState extends State<ViewCartPage> {
  List<Cart>? cartItems; // List to store cart items from the database

  @override
  void initState() {
    super.initState();
    _loadCartItems(); // Load the cart items when the page is initialized
  }

  // Function to load all cart items from the database
  Future<void> _loadCartItems() async {
    cartItems = await DatabaseHelper.getAllCart(); // Fetch all cart items
    setState(() {}); // Rebuild the widget with the loaded cart items
  }

  // Function to delete a cart item and refresh the list
  Future<void> _deleteCartItem(Cart cartItem) async {
    await DatabaseHelper.deleteCart(cartItem); // Delete the item from the database
    _loadCartItems(); // Reload the cart items after deletion
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart Items"),
        backgroundColor: Colors.transparent, // Transparent background for AppBar
      ),
      body: cartItems == null
          ? Center(child: CircularProgressIndicator()) // Show loading indicator while data is being fetched
          : cartItems!.isEmpty
              ? Center(child: Text("No items found in the cart.")) // Show message if cart is empty
              : ListView.builder(
                  itemCount: cartItems!.length, // Number of items in the cart
                  itemBuilder: (context, index) {
                    final item = cartItems![index]; // Get the cart item at the current index
                    return ListTile(
                      title: Text(item.itemName), // Display item name
                      subtitle: Text(
                        'Quantity: ${item.quantity} | Price: \$${item.salePrice.toStringAsFixed(2)}',
                      ), // Display item quantity and price
                      trailing: IconButton(
                        icon: Icon(Icons.delete), // Delete icon
                        onPressed: () async {
                          await _deleteCartItem(item); // Delete the item from the database
                        },
                      ),
                    );
                  },
                ),
    );
  }
}
