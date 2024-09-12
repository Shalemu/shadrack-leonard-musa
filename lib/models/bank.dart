class Bank {
  final int id;
  final String name;
  final DateTime? deletedAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Bank({
    required this.id,
    required this.name,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  // Convert a Bank into a Map
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'deleted_at': deletedAt?.toIso8601String(),
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
  };

  // Convert a Map into a Bank
  factory Bank.fromJson(Map<String, dynamic> json) => Bank(
    id: json['id'],
    name: json['name'],
    deletedAt: json['deleted_at'] != null ? DateTime.parse(json['deleted_at']) : null,
    createdAt: json['created_at'] != null ? DateTime.parse(json['created_at']) : null,
    updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at']) : null,
  );
}