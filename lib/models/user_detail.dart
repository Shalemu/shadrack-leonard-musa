class UserDetail {
  final int? id;
  final String? lastLogin;
  final int active;
  final int firstTime;
  final String? expiringDate;
  final String? postalAddress;
  final String? physicalAddress;
  final String? photo;
  final int paymentStatus;
  final int lang;
  final int ownerId;
  final int emailSub;
  final int bundleId;
  final int bundleQty;
  final String? lastPay;
  final int shopLimit;
  final String? deletedAt;
  final int userId;
  final String? createdAt;
  final String? updatedAt;

  UserDetail({
    this.id,
    this.lastLogin,
    required this.active,
    required this.firstTime,
    this.expiringDate,
    this.postalAddress,
    this.physicalAddress,
    this.photo,
    required this.paymentStatus,
    required this.lang,
    required this.ownerId,
    required this.emailSub,
    required this.bundleId,
    required this.bundleQty,
    this.lastPay,
    required this.shopLimit,
    this.deletedAt,
    required this.userId,
    this.createdAt,
    this.updatedAt,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'last_login': lastLogin,
    'active': active,
    'first_time': firstTime,
    'expiring_date': expiringDate,
    'postal_address': postalAddress,
    'physical_address': physicalAddress,
    'photo': photo,
    'payment_status': paymentStatus,
    'lang': lang,
    'owner_id': ownerId,
    'email_sub': emailSub,
    'bundle_id': bundleId,
    'bundle_qty': bundleQty,
    'last_pay': lastPay,
    'shop_limit': shopLimit,
    'deleted_at': deletedAt,
    'user_id': userId,
    'created_at': createdAt,
    'updated_at': updatedAt,
  };

  factory UserDetail.fromJson(Map<String, dynamic> json) => UserDetail(
    id: json['id'],
    lastLogin: json['last_login'],
    active: json['active'],
    firstTime: json['first_time'],
    expiringDate: json['expiring_date'],
    postalAddress: json['postal_address'],
    physicalAddress: json['physical_address'],
    photo: json['photo'],
    paymentStatus: json['payment_status'],
    lang: json['lang'],
    ownerId: json['owner_id'],
    emailSub: json['email_sub'],
    bundleId: json['bundle_id'],
    bundleQty: json['bundle_qty'],
    lastPay: json['last_pay'],
    shopLimit: json['shop_limit'],
    deletedAt: json['deleted_at'],
    userId: json['user_id'],
    createdAt: json['created_at'],
    updatedAt: json['updated_at'],
  );
}
