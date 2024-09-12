class QuotationItem {
  final int id;
  final int? quotationId;
  final int? itemId;
  final int quantity;
  final double purchasePrice;
  final double discount;
  final double taxRate;
  final double taxAmount;
  final double totalCost;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;

  QuotationItem({
    required this.id,
    this.quotationId,
    this.itemId,
    required this.quantity,
    required this.purchasePrice,
    required this.discount,
    required this.taxRate,
    required this.taxAmount,
    required this.totalCost,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  // Convert a QuotationItem object into a Map
  Map<String, dynamic> toJson() => {
    'id': id,
    'quotation_id': quotationId,
    'item_id': itemId,
    'quantity': quantity,
    'purchase_price': purchasePrice,
    'discount': discount,
    'tax_rate': taxRate,
    'tax_amount': taxAmount,
    'total_cost': totalCost,
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
    'deleted_at': deletedAt?.toIso8601String(),
  };

  // Create a QuotationItem object from a Map
  factory QuotationItem.fromJson(Map<String, dynamic> json) => QuotationItem(
    id: json['id'],
    quotationId: json['quotation_id'],
    itemId: json['item_id'],
    quantity: json['quantity'],
    purchasePrice: json['purchase_price'].toDouble(),
    discount: json['discount'].toDouble(),
    taxRate: json['tax_rate'].toDouble(),
    taxAmount: json['tax_amount'].toDouble(),
    totalCost: json['total_cost'].toDouble(),
    createdAt: json['created_at'] != null ? DateTime.parse(json['created_at']) : null,
    updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at']) : null,
    deletedAt: json['deleted_at'] != null ? DateTime.parse(json['deleted_at']) : null,
  );
}
