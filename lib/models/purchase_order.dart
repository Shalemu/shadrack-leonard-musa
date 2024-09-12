class PurchaseOrder {
  final int id;
  final int? quotationId;
  final double totalAmount;
  final String status;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;

  PurchaseOrder({
    required this.id,
    this.quotationId,
    required this.totalAmount,
    required this.status,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  // Convert a PurchaseOrder object into a Map
  Map<String, dynamic> toJson() => {
    'id': id,
    'quotation_id': quotationId,
    'total_amount': totalAmount,
    'status': status,
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
    'deleted_at': deletedAt?.toIso8601String(),
  };

  // Create a PurchaseOrder object from a Map
  factory PurchaseOrder.fromJson(Map<String, dynamic> json) => PurchaseOrder(
    id: json['id'],
    quotationId: json['quotation_id'],
    totalAmount: json['total_amount'],
    status: json['status'],
    createdAt: json['created_at'] != null ? DateTime.parse(json['created_at']) : null,
    updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at']) : null,
    deletedAt: json['deleted_at'] != null ? DateTime.parse(json['deleted_at']) : null,
  );
}
