class Quotation {
  final int id;
  final int? supplierId;
  final int? retailerId;
  final DateTime issueDate;
  final String quotationNumber;
  final double orderTax;
  final double discount;
  final double shipping;
  final double totalAmount;
  final String status;
  final String? description;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;

  Quotation({
    required this.id,
    this.supplierId,
    this.retailerId,
    required this.issueDate,
    required this.quotationNumber,
    required this.orderTax,
    required this.discount,
    required this.shipping,
    required this.totalAmount,
    required this.status,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  // Convert a Quotation object into a Map
  Map<String, dynamic> toJson() => {
    'id': id,
    'supplier_id': supplierId,
    'retailer_id': retailerId,
    'issue_date': issueDate.toIso8601String(),
    'quotation_number': quotationNumber,
    'order_tax': orderTax,
    'discount': discount,
    'shipping': shipping,
    'total_amount': totalAmount,
    'status': status,
    'description': description,
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
    'deleted_at': deletedAt?.toIso8601String(),
  };

  // Create a Quotation object from a Map
  factory Quotation.fromJson(Map<String, dynamic> json) => Quotation(
    id: json['id'],
    supplierId: json['supplier_id'],
    retailerId: json['retailer_id'],
    issueDate: DateTime.parse(json['issue_date']),
    quotationNumber: json['quotation_number'],
    orderTax: json['order_tax'],
    discount: json['discount'],
    shipping: json['shipping'],
    totalAmount: json['total_amount'],
    status: json['status'],
    description: json['description'],
    createdAt: json['created_at'] != null ? DateTime.parse(json['created_at']) : null,
    updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at']) : null,
    deletedAt: json['deleted_at'] != null ? DateTime.parse(json['deleted_at']) : null,
  );
}
