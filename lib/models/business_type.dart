class BusinessType {
  final int id;
  final String name;
  final int status;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;

  BusinessType({
    required this.id,
    required this.name,
    required this.status,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  // Convert a BusinessType into a Map
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'status': status,
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
    'deleted_at': deletedAt?.toIso8601String(),
  };

  // Convert a Map into a BusinessType
  factory BusinessType.fromJson(Map<String, dynamic> json) => BusinessType(
    id: json['id'],
    name: json['name'],
    status: json['status'],
    createdAt: json['created_at'] != null ? DateTime.parse(json['created_at']) : null,
    updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at']) : null,
    deletedAt: json['deleted_at'] != null ? DateTime.parse(json['deleted_at']) : null,
  );
}