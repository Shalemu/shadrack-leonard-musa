class CustomerSupplierAccount {
  final int id;
  final String name;
  final String phone;
  final bool isCustomer;
  final String? email;
  final String? profileImage;
  final int adminId;
  final DateTime? deletedAt;
  final DateTime createdAt;
  final DateTime updatedAt;

  CustomerSupplierAccount({
    required this.id,
    required this.name,
    required this.phone,
    required this.isCustomer,
    this.email,
    this.profileImage,
    required this.adminId,
    this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  // Convert a CustomerSupplierAccount into a Map.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'is_customer': isCustomer ? 1 : 0,
      'email': email,
      'profile_image': profileImage,
      'admin_id': adminId,
      'deleted_at': deletedAt?.toIso8601String(),
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }

  // Extract a CustomerSupplierAccount from a Map.
  factory CustomerSupplierAccount.fromMap(Map<String, dynamic> map) {
    return CustomerSupplierAccount(
      id: map['id'],
      name: map['name'],
      phone: map['phone'],
      isCustomer: map['is_customer'] == 1,
      email: map['email'],
      profileImage: map['profile_image'],
      adminId: map['admin_id'],
      deletedAt: map['deleted_at'] != null ? DateTime.parse(map['deleted_at']) : null,
      createdAt: DateTime.parse(map['created_at']),
      updatedAt: DateTime.parse(map['updated_at']),
    );
  }
}
