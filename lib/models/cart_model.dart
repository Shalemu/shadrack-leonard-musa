class Cart {
  final int? id; // Primary key
  final int transactionId; // Foreign key from transactions
  final int itemId; // Item ID
  final String itemName; // Name of the item
  final double salePrice; // Sale price per item
  final int quantity; // Quantity of the item
  final double? total; // Total amount
  final double discountValue; // Discount applied to the item
  final String? deletedAt; // Soft delete timestamp
  final String? createdAt; // Creation timestamp
  final String? updatedAt; // Last update timestamp

  // Define additional fields if they are part of the model
  final double price;
  final String img;

  const Cart({
    this.id,
    required this.transactionId,
    required this.itemId,
    required this.itemName,
    required this.salePrice,
    required this.quantity,
    this.total,
    this.discountValue = 0.0,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    required this.price,
    required this.img,
  });

  // Factory method to create Cart from JSON
  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(
      id: json['id'],
      transactionId: json['transaction_id'],
      itemId: json['item_id'],
      itemName: json['item_name'],
      salePrice: json['sale_price'],
      quantity: json['quantity'],
      total: json['total'],
      discountValue: json['discount_value'],
      deletedAt: json['deleted_at'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      price: json['price'] ?? 0.0, // Add these fields if they are part of your JSON schema
      img: json['img'] ?? '',
    );
  }

  // Convert Cart instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'transaction_id': transactionId,
      'item_id': itemId,
      'item_name': itemName,
      'sale_price': salePrice,
      'quantity': quantity,
      'total': total,
      'discount_value': discountValue,
      'deleted_at': deletedAt,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'price': price, // Add price field
      'img': img,     // Add img field
    };
  }

  // Method to calculate the total amount
  double calculateTotal() {
    return salePrice * quantity;
  }
}
