class BusinessCategory {
  final int id;
  final String name;
  final int status;
  final DateTime? deletedAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  BusinessCategory({
    required this.id,
    required this.name,
    required this.status,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  // Convert a BusinessCategory into a Map
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'status': status,
    'deleted_at': deletedAt?.toIso8601String(),
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
  };

  // Convert a Map into a BusinessCategory
  factory BusinessCategory.fromJson(Map<String, dynamic> json) => BusinessCategory(
    id: json['id'],
    name: json['name'],
    status: json['status'],
    deletedAt: json['deleted_at'] != null ? DateTime.parse(json['deleted_at']) : null,
    createdAt: json['created_at'] != null ? DateTime.parse(json['created_at']) : null,
    updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at']) : null,
  );
}