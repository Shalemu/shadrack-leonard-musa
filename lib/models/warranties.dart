class Warranty {
  final int? id;
  final String name;
  final String? discription;
  final String duration;
  final int status;
  final String period;
  final int adminId;
  final String? deletedAt;
  final String? createdAt;
  final String? updatedAt;

  Warranty({
    this.id,
    required this.name,
    this.discription,
    required this.duration,
    required this.status,
    required this.period,
    required this.adminId,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  // Convert a Warranty object into a Map
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'discription': discription,
    'duration': duration,
    'status': status,
    'period': period,
    'admin_id': adminId,
    'deleted_at': deletedAt,
    'created_at': createdAt,
    'updated_at': updatedAt,
  };

  // Create a Warranty object from a Map
  factory Warranty.fromJson(Map<String, dynamic> json) => Warranty(
    id: json['id'],
    name: json['name'],
    discription: json['discription'],
    duration: json['duration'],
    status: json['status'],
    period: json['period'],
    adminId: json['admin_id'],
    deletedAt: json['deleted_at'],
    createdAt: json['created_at'],
    updatedAt: json['updated_at'],
  );
}
