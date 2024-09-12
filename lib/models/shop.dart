class Shop {
  final int? id;
  final String name;
  final int type;
  final int? businessCategory;
  final String? address;
  final int status;
  final int? adminId;
  final String? deletedAt;
  final String? createdAt;
  final String? updatedAt;

  Shop({
    this.id,
    required this.name,
    required this.type,
    this.businessCategory,
    this.address,
    required this.status,
    this.adminId,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  // Convert a Shop object into a Map
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'type': type,
    'business_category': businessCategory,
    'address': address,
    'status': status,
    'admin_id': adminId,
    'deleted_at': deletedAt,
    'created_at': createdAt,
    'updated_at': updatedAt,
  };

  // Create a Shop object from a Map
  factory Shop.fromJson(Map<String, dynamic> json) => Shop(
    id: json['id'],
    name: json['name'],
    type: json['type'],
    businessCategory: json['business_category'],
    address: json['address'],
    status: json['status'],
    adminId: json['admin_id'],
    deletedAt: json['deleted_at'],
    createdAt: json['created_at'],
    updatedAt: json['updated_at'],
  );
}
