class Role {
  final int id;
  final String name;
  final int? shopId;
  final int type;
  final int? adminId;
  final String guardName;
  final DateTime? deletedAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Role({
    required this.id,
    required this.name,
    this.shopId,
    required this.type,
    this.adminId,
    required this.guardName,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  // Convert a Role object into a Map
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'shop_id': shopId,
    'type': type,
    'admin_id': adminId,
    'guard_name': guardName,
    'deleted_at': deletedAt?.toIso8601String(),
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
  };

  // Create a Role object from a Map
  factory Role.fromJson(Map<String, dynamic> json) => Role(
    id: json['id'],
    name: json['name'],
    shopId: json['shop_id'],
    type: json['type'],
    adminId: json['admin_id'],
    guardName: json['guard_name'],
    deletedAt: json['deleted_at'] != null ? DateTime.parse(json['deleted_at']) : null,
    createdAt: json['created_at'] != null ? DateTime.parse(json['created_at']) : null,
    updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at']) : null,
  );
}
