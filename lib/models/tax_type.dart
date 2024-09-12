class TaxType {
  final int? id;
  final String name;
  final int? adminId;
  final String? deletedAt;
  final String? createdAt;
  final String? updatedAt;

  TaxType({
    this.id,
    required this.name,
    this.adminId,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  // Convert a TaxType object into a Map
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'admin_id': adminId,
    'deleted_at': deletedAt,
    'created_at': createdAt,
    'updated_at': updatedAt,
  };

  // Create a TaxType object from a Map
  factory TaxType.fromJson(Map<String, dynamic> json) => TaxType(
    id: json['id'],
    name: json['name'],
    adminId: json['admin_id'],
    deletedAt: json['deleted_at'],
    createdAt: json['created_at'],
    updatedAt: json['updated_at'],
  );
}
