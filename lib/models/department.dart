class Department {
  final int id;
  final String name;
  final String? hod;
  final String status;
  final int adminId;
  final DateTime? deletedAt;
  final DateTime createdAt;
  final DateTime updatedAt;

  Department({
    required this.id,
    required this.name,
    this.hod,
    required this.status,
    required this.adminId,
    this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  // Convert a Department into a Map.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'hod': hod,
      'status': status,
      'admin_id': adminId,
      'deleted_at': deletedAt?.toIso8601String(),
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }

  // Extract a Department from a Map.
  factory Department.fromMap(Map<String, dynamic> map) {
    return Department(
      id: map['id'],
      name: map['name'],
      hod: map['hod'],
      status: map['status'],
      adminId: map['admin_id'],
      deletedAt: map['deleted_at'] != null ? DateTime.parse(map['deleted_at']) : null,
      createdAt: DateTime.parse(map['created_at']),
      updatedAt: DateTime.parse(map['updated_at']),
    );
  }
}
