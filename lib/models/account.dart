class Account {
  final int id;
  final String accountProvider;
  final String accountNumber;
  final String? accountName;
  final String? accountType;
  final String accountStatus;
  final int? adminId;
  final int accountCategory;
  final DateTime? deletedAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Account({
    required this.id,
    required this.accountProvider,
    required this.accountNumber,
    this.accountName,
    this.accountType,
    required this.accountStatus,
    this.adminId,
    required this.accountCategory,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  // Convert a Account into a Map
  Map<String, dynamic> toJson() => {
    'id': id,
    'account_provider': accountProvider,
    'account_number': accountNumber,
    'account_name': accountName,
    'account_type': accountType,
    'account_status': accountStatus,
    'admin_id': adminId,
    'account_category': accountCategory,
    'deleted_at': deletedAt?.toIso8601String(),
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
  };

  // Convert a Map into a Account
  factory Account.fromJson(Map<String, dynamic> json) => Account(
    id: json['id'],
    accountProvider: json['account_provider'],
    accountNumber: json['account_number'],
    accountName: json['account_name'],
    accountType: json['account_type'],
    accountStatus: json['account_status'],
    adminId: json['admin_id'],
    accountCategory: json['account_category'],
    deletedAt: json['deleted_at'] != null ? DateTime.parse(json['deleted_at']) : null,
    createdAt: json['created_at'] != null ? DateTime.parse(json['created_at']) : null,
    updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at']) : null,
  );
}