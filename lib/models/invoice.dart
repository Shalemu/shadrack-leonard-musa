class Invoice {
  final int id;
  final int? purchaseOrderId;
  final double totalAmount;
  final String status;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;

  Invoice({
    required this.id,
    this.purchaseOrderId,
    required this.totalAmount,
    required this.status,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  // Convert an Invoice into a Map.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'purchase_order_id': purchaseOrderId,
      'total_amount': totalAmount,
      'status': status,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
      'deleted_at': deletedAt?.toIso8601String(),
    };
  }

  // Extract an Invoice from a Map.
  factory Invoice.fromMap(Map<String, dynamic> map) {
    return Invoice(
      id: map['id'],
      purchaseOrderId: map['purchase_order_id'],
      totalAmount: map['total_amount'].toDouble(),
      status: map['status'],
      createdAt: map['created_at'] != null ? DateTime.parse(map['created_at']) : null,
      updatedAt: map['updated_at'] != null ? DateTime.parse(map['updated_at']) : null,
      deletedAt: map['deleted_at'] != null ? DateTime.parse(map['deleted_at']) : null,
    );
  }
}