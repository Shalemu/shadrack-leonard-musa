class Event {
  final int id;
  final String name;
  final int numberOfPeople;
  final bool isGroup;
  final bool status;
  final String phoneNumber;
  final String eventDate;
  final int? otp;
  final int? adminId;
  final DateTime? deletedAt;
  final DateTime createdAt;
  final DateTime updatedAt;

  Event({
    required this.id,
    required this.name,
    required this.numberOfPeople,
    required this.isGroup,
    required this.status,
    required this.phoneNumber,
    required this.eventDate,
    this.otp,
    this.adminId,
    this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  // Convert an Event into a Map.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'number_of_people': numberOfPeople,
      'is_group': isGroup ? 1 : 0,
      'status': status ? 1 : 0,
      'phone_number': phoneNumber,
      'event_date': eventDate,
      'otp': otp,
      'admin_id': adminId,
      'deleted_at': deletedAt?.toIso8601String(),
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }

  // Extract an Event from a Map.
  factory Event.fromMap(Map<String, dynamic> map) {
    return Event(
      id: map['id'],
      name: map['name'],
      numberOfPeople: map['number_of_people'],
      isGroup: map['is_group'] == 1,
      status: map['status'] == 1,
      phoneNumber: map['phone_number'],
      eventDate: map['event_date'],
      otp: map['otp'],
      adminId: map['admin_id'],
      deletedAt: map['deleted_at'] != null ? DateTime.parse(map['deleted_at']) : null,
      createdAt: DateTime.parse(map['created_at']),
      updatedAt: DateTime.parse(map['updated_at']),
    );
  }
}