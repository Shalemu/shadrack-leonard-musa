class EmployeeAssignedShop {
  final int id;
  final int shop;
  final int employee;
  final int adminId;
  final DateTime? deletedAt;
  final DateTime createdAt;
  final DateTime updatedAt;

  EmployeeAssignedShop({
    required this.id,
    required this.shop,
    required this.employee,
    required this.adminId,
    this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  // Convert an EmployeeAssignedShop into a Map.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'shop': shop,
      'employee': employee,
      'admin_id': adminId,
      'deleted_at': deletedAt?.toIso8601String(),
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }

  // Extract an EmployeeAssignedShop from a Map.
  factory EmployeeAssignedShop.fromMap(Map<String, dynamic> map) {
    return EmployeeAssignedShop(
      id: map['id'],
      shop: map['shop'],
      employee: map['employee'],
      adminId: map['admin_id'],
      deletedAt: map['deleted_at'] != null ? DateTime.parse(map['deleted_at']) : null,
      createdAt: DateTime.parse(map['created_at']),
      updatedAt: DateTime.parse(map['updated_at']),
    );
  }
}
