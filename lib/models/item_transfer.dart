class ItemTransfer {
  final int id;
  final String fromWarehouse;
  final String toWarehouse;
  final int totalNumberProduct;
  final int quantityTransferred;
  final int stockAfterTransfer;
  final String refNumber;
  final String? dateTransfer;
  final String? description;
  final int item;
  final int? adminId;
  final DateTime? deletedAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  ItemTransfer({
    required this.id,
    required this.fromWarehouse,
    required this.toWarehouse,
    required this.totalNumberProduct,
    required this.quantityTransferred,
    required this.stockAfterTransfer,
    required this.refNumber,
    this.dateTransfer,
    this.description,
    required this.item,
    this.adminId,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  // Convert an ItemTransfer into a Map.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'from_warehouse': fromWarehouse,
      'to_warehouse': toWarehouse,
      'total_number_product': totalNumberProduct,
      'quantity_transfered': quantityTransferred,
      'stock_after_transfer': stockAfterTransfer,
      'ref_number': refNumber,
      'date_transfer': dateTransfer,
      'description': description,
      'item': item,
      'admin_id': adminId,
      'deleted_at': deletedAt?.toIso8601String(),
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
    };
  }

  // Extract an ItemTransfer from a Map.
  factory ItemTransfer.fromMap(Map<String, dynamic> map) {
    return ItemTransfer(
      id: map['id'],
      fromWarehouse: map['from_warehouse'],
      toWarehouse: map['to_warehouse'],
      totalNumberProduct: map['total_number_product'],
      quantityTransferred: map['quantity_transfered'],
      stockAfterTransfer: map['stock_after_transfer'],
      refNumber: map['ref_number'],
      dateTransfer: map['date_transfer'],
      description: map['description'],
      item: map['item'],
      adminId: map['admin_id'],
      deletedAt: map['deleted_at'] != null ? DateTime.parse(map['deleted_at']) : null,
      createdAt: map['created_at'] != null ? DateTime.parse(map['created_at']) : null,
      updatedAt: map['updated_at'] != null ? DateTime.parse(map['updated_at']) : null,
    );
  }
}