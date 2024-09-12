class Transactions {
  final int? id;
  final double totalBill;
  final String paymentMode;
  final String? phone;
  final String? deliveryMode;
  final String? description;
  final double? discountValue;
  final double? discount;
  final String? taxPercentage;
  final double? gstTax;
  final double? shippingValue;
  final double? shipping;
  final double? due;
  final double? amountChange;
  final double? totalPayable;
  final double? subTotal;
  final String transactionId;
  final String status;
  final int? soldBy;
  final int? suppliedBy;
  final int? soldTo;
  final String? deletedAt;
  final String? createdAt;
  final String? updatedAt;

  Transactions({
    this.id,
    required this.totalBill,
    required this.paymentMode,
    this.phone,
    this.deliveryMode,
    this.description,
    this.discountValue,
    this.discount,
    this.taxPercentage,
    this.gstTax,
    this.shippingValue,
    this.shipping,
    this.due,
    this.amountChange,
    this.totalPayable,
    this.subTotal,
    required this.transactionId,
    this.status = 'pending',
    this.soldBy,
    this.suppliedBy,
    this.soldTo,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  // Convert a Transaction object into a Map
  Map<String, dynamic> toJson() => {
    'id': id,
    'total_bill': totalBill,
    'payment_mode': paymentMode,
    'phone': phone,
    'delivery_mode': deliveryMode,
    'description': description,
    'discount_value': discountValue,
    'discount': discount,
    'tax_percentage': taxPercentage,
    'gst_tax': gstTax,
    'shipping_value': shippingValue,
    'shipping': shipping,
    'due': due,
    'amount_change': amountChange,
    'total_payable': totalPayable,
    'sub_total': subTotal,
    'transaction_id': transactionId,
    'status': status,
    'sold_by': soldBy,
    'supplied_by': suppliedBy,
    'sold_to': soldTo,
    'deleted_at': deletedAt,
    'created_at': createdAt,
    'updated_at': updatedAt,
  };

  // Create a Transaction object from a Map
  factory Transactions.fromJson(Map<String, dynamic> json) => Transactions(
    id: json['id'],
    totalBill: json['total_bill'],
    paymentMode: json['payment_mode'],
    phone: json['phone'],
    deliveryMode: json['delivery_mode'],
    description: json['description'],
    discountValue: json['discount_value'],
    discount: json['discount'],
    taxPercentage: json['tax_percentage'],
    gstTax: json['gst_tax'],
    shippingValue: json['shipping_value'],
    shipping: json['shipping'],
    due: json['due'],
    amountChange: json['amount_change'],
    totalPayable: json['total_payable'],
    subTotal: json['sub_total'],
    transactionId: json['transaction_id'],
    status: json['status'],
    soldBy: json['sold_by'],
    suppliedBy: json['supplied_by'],
    soldTo: json['sold_to'],
    deletedAt: json['deleted_at'],
    createdAt: json['created_at'],
    updatedAt: json['updated_at'],
  );
}
