class User {
  final int? id;
  final String name;
  final String username;
  final String phone;
  final String email;
  final String password;
  final String code;
  final String expiresAt;
  final int verified;
  final int superUser;
  final int passwordReset;
  final int loginTrials;
  final String? adminId;
  final String? profileImage;
  final String? deletedAt;
  final String? verifiedAt;
  final int roleId;
  final String userType;
  final String? createdAt;
  final String? updatedAt;

  User({
    this.id,
    required this.name,
    required this.username,
    required this.phone,
    required this.email,
    required this.password,
    required this.code,
    required this.expiresAt,
    this.verified = 0,
    this.superUser = 1,
    this.passwordReset = 0,
    this.loginTrials = 0,
    this.adminId,
    this.profileImage,
    this.deletedAt,
    this.verifiedAt,
    required this.roleId,
    this.userType = 'Retailer',
    this.createdAt,
    this.updatedAt,
  });

  // Convert a User object into a Map
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'username': username,
    'phone': phone,
    'email': email,
    'password': password,
    'code': code,
    'expires_at': expiresAt,
    'verified': verified,
    'super_user': superUser,
    'password_reset': passwordReset,
    'login_trials': loginTrials,
    'admin_id': adminId,
    'profile_image': profileImage,
    'deleted_at': deletedAt,
    'verified_at': verifiedAt,
    'role_id': roleId,
    'user_type': userType,
    'created_at': createdAt,
    'updated_at': updatedAt,
  };

  // Create a User object from a Map
  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json['id'],
    name: json['name'],
    username: json['username'],
    phone: json['phone'],
    email: json['email'],
    password: json['password'],
    code: json['code'],
    expiresAt: json['expires_at'],
    verified: json['verified'],
    superUser: json['super_user'],
    passwordReset: json['password_reset'],
    loginTrials: json['login_trials'],
    adminId: json['admin_id'],
    profileImage: json['profile_image'],
    deletedAt: json['deleted_at'],
    verifiedAt: json['verified_at'],
    roleId: json['role_id'],
    userType: json['user_type'],
    createdAt: json['created_at'],
    updatedAt: json['updated_at'],
  );
}
