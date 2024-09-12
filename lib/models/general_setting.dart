class GeneralSettings {
  final int id;
  final String businessName;
  final String businessType;
  final String businessCategory;
  final int numberOfShops;
  final String? businessAddress;
  final String? businessPhone;
  final String? businessWebsite;
  final int? adminId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;

  GeneralSettings({
    required this.id,
    required this.businessName,
    required this.businessType,
    required this.businessCategory,
    required this.numberOfShops,
    this.businessAddress,
    this.businessPhone,
    this.businessWebsite,
    this.adminId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  // Convert a GeneralSettings into a Map.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'business_name': businessName,
      'business_type': businessType,
      'business_category': businessCategory,
      'number_of_shops': numberOfShops,
      'business_address': businessAddress,
      'business_phone': businessPhone,
      'business_website': businessWebsite,
      'admin_id': adminId,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
      'deleted_at': deletedAt?.toIso8601String(),
    };
  }

  // Extract a GeneralSettings from a Map.
  factory GeneralSettings.fromMap(Map<String, dynamic> map) {
    return GeneralSettings(
      id: map['id'],
      businessName: map['business_name'],
      businessType: map['business_type'],
      businessCategory: map['business_category'],
      numberOfShops: map['number_of_shops'],
      businessAddress: map['business_address'],
      businessPhone: map['business_phone'],
      businessWebsite: map['business_website'],
      adminId: map['admin_id'],
      createdAt: map['created_at'] != null ? DateTime.parse(map['created_at']) : null,
      updatedAt: map['updated_at'] != null ? DateTime.parse(map['updated_at']) : null,
      deletedAt: map['deleted_at'] != null ? DateTime.parse(map['deleted_at']) : null,
    );
  }
}