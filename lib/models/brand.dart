class Brand {
  final int id;
  final String name;
  final String? logo;
  final int? adminId;
  final DateTime? deletedAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Brand({
    required this.id,
    required this.name,
    this.logo,
    this.adminId,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  // Convert a Brand into a Map
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'logo': logo,
    'admin_id': adminId,
    'deleted_at': deletedAt?.toIso8601String(),
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
  };

  // Convert a Map into a Brand
  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
    id: json['id'],
    name: json['name'],
    logo: json['logo'],
    adminId: json['admin_id'],
    deletedAt: json['deleted_at'] != null ? DateTime.parse(json['deleted_at']) : null,
    createdAt: json['created_at'] != null ? DateTime.parse(json['created_at']) : null,
    updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at']) : null,
  );
}