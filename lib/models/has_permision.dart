class RoleHasPermission {
  final int permissionId;
  final int roleId;

  RoleHasPermission({
    required this.permissionId,
    required this.roleId,
  });

  // Convert a RoleHasPermission object into a Map
  Map<String, dynamic> toJson() => {
    'permission_id': permissionId,
    'role_id': roleId,
  };

  // Create a RoleHasPermission object from a Map
  factory RoleHasPermission.fromJson(Map<String, dynamic> json) => RoleHasPermission(
    permissionId: json['permission_id'],
    roleId: json['role_id'],
  );
}
