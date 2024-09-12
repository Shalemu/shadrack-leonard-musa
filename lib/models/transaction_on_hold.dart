class TransactionOnHold {
  final int? id;
  final int transactionId;
  final String? paymentHoldReference;
  final int status;
  final String? deletedAt;
  final String? createdAt;
  final String? updatedAt;

  TransactionOnHold({
    this.id,
    required this.transactionId,
    this.paymentHoldReference,
    this.status = 0,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  // Convert a TransactionOnHold object into a Map
  Map<String, dynamic> toJson() => {
    'id': id,
    'transaction_id': transactionId,
    'payment_hold_reference': paymentHoldReference,
    'status': status,
    'deleted_at': deletedAt,
    'created_at': createdAt,
    'updated_at': updatedAt,
  };

  // Create a TransactionOnHold object from a Map
  factory TransactionOnHold.fromJson(Map<String, dynamic> json) => TransactionOnHold(
    id: json['id'],
    transactionId: json['transaction_id'],
    paymentHoldReference: json['payment_hold_reference'],
    status: json['status'],
    deletedAt: json['deleted_at'],
    createdAt: json['created_at'],
    updatedAt: json['updated_at'],
  );
}
