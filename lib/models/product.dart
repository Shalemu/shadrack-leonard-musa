class Product {
  final int id;
  final String name;
  final String? itemCode;
  final String? barcodeSymbology;
  final String? description;
  final String? discountType;
  final String? discountValue;
  final int productType;
  final int brandId;
  final int? categoryId;
  final int? subcategoryId;
  final int minStock;
  final int? storeId;
  final int? shopId;
  final int adminId;
  final int? taxType;
  final int? quantity;
  final int? quantityAlert;
  final String? sellingType;
  final DateTime? deletedAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Product({
    required this.id,
    required this.name,
    this.itemCode,
    this.barcodeSymbology,
    this.description,
    this.discountType,
    this.discountValue,
    required this.productType,
    required this.brandId,
    this.categoryId,
    this.subcategoryId,
    required this.minStock,
    this.storeId,
    this.shopId,
    required this.adminId,
    this.taxType,
    this.quantity,
    this.quantityAlert,
    this.sellingType,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  // Convert a Product into a Map. The keys must correspond to the column names in the database.
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['item_code'] = itemCode;
    data['barcode_symbology'] = barcodeSymbology;
    data['description'] = description;
    data['discount_type'] = discountType;
    data['discount_value'] = discountValue;
    data['product_type'] = productType;
    data['brand_id'] = brandId;
    data['category_id'] = categoryId;
    data['subcategory_id'] = subcategoryId;
    data['min_stock'] = minStock;
    data['store_id'] = storeId;
    data['shop_id'] = shopId;
    data['admin_id'] = adminId;
    data['tax_type'] = taxType;
    data['quantity'] = quantity;
    data['quantity_alert'] = quantityAlert;
    data['selling_type'] = sellingType;
    data['deleted_at'] = deletedAt?.toIso8601String();
    data['created_at'] = createdAt?.toIso8601String();
    data['updated_at'] = updatedAt?.toIso8601String();
    return data;
  }

  // Convert a Map into a Product. The keys must correspond to the column names in the database.
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      itemCode: json['item_code'],
      barcodeSymbology: json['barcode_symbology'],
      description: json['description'],
      discountType: json['discount_type'],
      discountValue: json['discount_value'],
      productType: json['product_type'],
      brandId: json['brand_id'],
      categoryId: json['category_id'],
      subcategoryId: json['subcategory_id'],
      minStock: json['min_stock'],
      storeId: json['store_id'],
      shopId: json['shop_id'],
      adminId: json['admin_id'],
      taxType: json['tax_type'],
      quantity: json['quantity'],
      quantityAlert: json['quantity_alert'],
      sellingType: json['selling_type'],
      deletedAt: json['deleted_at'] != null ? DateTime.parse(json['deleted_at']) : null,
      createdAt: json['created_at'] != null ? DateTime.parse(json['created_at']) : null,
      updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at']) : null,
    );
  }
}
