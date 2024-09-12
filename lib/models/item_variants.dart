class ItemVariant {
  final int id;
  final String name;
  final String value;
  final int? productId;
  final int adminId;
  final DateTime? deletedAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  ItemVariant({
    required this.id,
    required this.name,
    required this.value,
    this.productId,
    required this.adminId,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  // Convert an ItemVariant into a Map.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'value': value,
      'product_id': productId,
      'admin_id': adminId,
      'deleted_at': deletedAt?.toIso8601String(),
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
    };
  }

  // Extract an ItemVariant from a Map.
  factory ItemVariant.fromMap(Map<String, dynamic> map) {
    return ItemVariant(
      id: map['id'],
      name: map['name'],
      value: map['value'],
      productId: map['product_id'],
      adminId: map['admin_id'],
      deletedAt: map['deleted_at'] != null ? DateTime.parse(map['deleted_at']) : null,
      createdAt: map['created_at'] != null ? DateTime.parse(map['created_at']) : null,
      updatedAt: map['updated_at'] != null ? DateTime.parse(map['updated_at']) : null,
    );
  }
}