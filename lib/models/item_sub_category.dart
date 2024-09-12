class ItemSubCategory {
  final int id;
  final String name;
  final int? adminId;
  final int itemCategoryId;
  final DateTime? deletedAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  ItemSubCategory({
    required this.id,
    required this.name,
    this.adminId,
    required this.itemCategoryId,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  // Convert an ItemSubCategory into a Map.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'admin_id': adminId,
      'item_category_id': itemCategoryId,
      'deleted_at': deletedAt?.toIso8601String(),
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
    };
  }

  // Extract an ItemSubCategory from a Map.
  factory ItemSubCategory.fromMap(Map<String, dynamic> map) {
    return ItemSubCategory(
      id: map['id'],
      name: map['name'],
      adminId: map['admin_id'],
      itemCategoryId: map['item_category_id'],
      deletedAt: map['deleted_at'] != null ? DateTime.parse(map['deleted_at']) : null,
      createdAt: map['created_at'] != null ? DateTime.parse(map['created_at']) : null,
      updatedAt: map['updated_at'] != null ? DateTime.parse(map['updated_at']) : null,
    );
  }
}