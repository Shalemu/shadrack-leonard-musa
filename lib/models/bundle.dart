class Bundle {
  final int id;
  final String name;
  final String price;
  final int shops;
  final int? subscribers;
  final String duration;
  final DateTime? deletedAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Bundle({
    required this.id,
    required this.name,
    required this.price,
    required this.shops,
    this.subscribers,
    required this.duration,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  // Convert a Bundle into a Map
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'price': price,
    'shops': shops,
    'subscribers': subscribers,
    'duration': duration,
    'deleted_at': deletedAt?.toIso8601String(),
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
  };

  // Convert a Map into a Bundle
  factory Bundle.fromJson(Map<String, dynamic> json) => Bundle(
    id: json['id'],
    name: json['name'],
    price: json['price'],
    shops: json['shops'],
    subscribers: json['subscribers'],
    duration: json['duration'],
    deletedAt: json['deleted_at'] != null ? DateTime.parse(json['deleted_at']) : null,
    createdAt: json['created_at'] != null ? DateTime.parse(json['created_at']) : null,
    updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at']) : null,
  );
}