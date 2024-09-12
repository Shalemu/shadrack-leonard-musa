class ListItemModel {
  String  itemName, img, day, month, price, location;
  int quantity; // To store the quantity of items added
  bool showAddToCartButton; // To toggle visibility of Add to Cart button

  ListItemModel({
    required this.itemName,
    required this.img,
    required this.location,
    required this.price,
    required this.day,
    required this.month,
    this.quantity = 0, // Initialize quantity to 0
    this.showAddToCartButton = false, // Initialize button visibility to false
  });

  ListItemModel copyWith({
    String? title,
    String? itemName,
    String? img,
    String? location,
    String? price,
    String? day,
    String? month,
    int? quantity,
    bool? showAddToCartButton,
  }) {
    return ListItemModel(
      // title: title ?? this.title,
      itemName: itemName?? this. itemName,
      img: img ?? this.img,
      location: location ?? this.location,
      price: price ?? this.price,
      day: day ?? this.day,
      month: month ?? this.month,
      quantity: quantity ?? this.quantity,
      showAddToCartButton: showAddToCartButton ?? this.showAddToCartButton,
    );
  }
}
