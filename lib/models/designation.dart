class Designation {
  final int id;
  final String name;
  final String status;
  final int adminId;
  final DateTime? deletedAt;
  final DateTime createdAt;
  final DateTime updatedAt;

  Designation({
    required this.id,
    required this.name,
    required this.status,
    required this.adminId,
    this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  // Convert a Designation into a Map.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'status': status,
      'admin_id': adminId,
      'deleted_at': deletedAt?.toIso8601String(),
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }

  // Extract a Designation from a Map.
  factory Designation.fromMap(Map<String, dynamic> map) {
    return Designation(
      id: map['id'],
      name: map['name'],
      status: map['status'],
      adminId: map['admin_id'],
      deletedAt: map['deleted_at'] != null ? DateTime.parse(map['deleted_at']) : null,
      createdAt: DateTime.parse(map['created_at']),
      updatedAt: DateTime.parse(map['updated_at']),
    );
  }
}