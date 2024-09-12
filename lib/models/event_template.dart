class EventTemplate {
  final int id;
  final String cardImage;
  final bool status;
  final String? numberOfLike;
  final String? numberOfDislike;
  final int? adminId;
  final DateTime? deletedAt;
  final DateTime createdAt;
  final DateTime updatedAt;

  EventTemplate({
    required this.id,
    required this.cardImage,
    required this.status,
    this.numberOfLike,
    this.numberOfDislike,
    this.adminId,
    this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  // Convert an EventTemplate into a Map.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'card_image': cardImage,
      'status': status ? 1 : 0,
      'number_of_like': numberOfLike,
      'number_of_dislike': numberOfDislike,
      'admin_id': adminId,
      'deleted_at': deletedAt?.toIso8601String(),
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }

  // Extract an EventTemplate from a Map.
  factory EventTemplate.fromMap(Map<String, dynamic> map) {
    return EventTemplate(
      id: map['id'],
      cardImage: map['card_image'],
      status: map['status'] == 1,
      numberOfLike: map['number_of_like'],
      numberOfDislike: map['number_of_dislike'],
      adminId: map['admin_id'],
      deletedAt: map['deleted_at'] != null ? DateTime.parse(map['deleted_at']) : null,
      createdAt: DateTime.parse(map['created_at']),
      updatedAt: DateTime.parse(map['updated_at']),
    );
  }
}
