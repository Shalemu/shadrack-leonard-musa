class MobilePayment {
  final int id;
  final String name;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;

  MobilePayment({
    required this.id,
    required this.name,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  // Convert a MobilePayment into a Map.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
      'deleted_at': deletedAt?.toIso8601String(),
    };
  }

  // Convert a Map into a MobilePayment.
  factory MobilePayment.fromMap(Map<String, dynamic> map) {
    return MobilePayment(
      id: map['id'],
      name: map['name'],
      createdAt: map['created_at'] != null ? DateTime.parse(map['created_at']) : null,
      updatedAt: map['updated_at'] != null ? DateTime.parse(map['updated_at']) : null,
      deletedAt: map['deleted_at'] != null ? DateTime.parse(map['deleted_at']) : null,
    );
  }

  @override
  String toString() {
    return 'MobilePayment{id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt}';
  }
}
