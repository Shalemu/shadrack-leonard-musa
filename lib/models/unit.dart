class Unit {
  final int? id;
  final String name;
  final String? symbol;
  final int? adminId;
  final String? deletedAt;
  final String? createdAt;
  final String? updatedAt;

  Unit({
    this.id,
    required this.name,
    this.symbol,
    this.adminId,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  // Convert a Unit object into a Map
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'symbol': symbol,
    'admin_id': adminId,
    'deleted_at': deletedAt,
    'created_at': createdAt,
    'updated_at': updatedAt,
  };

  // Create a Unit object from a Map
  factory Unit.fromJson(Map<String, dynamic> json) => Unit(
    id: json['id'],
    name: json['name'],
    symbol: json['symbol'],
    adminId: json['admin_id'],
    deletedAt: json['deleted_at'],
    createdAt: json['created_at'],
    updatedAt: json['updated_at'],
  );
}
