class Session {
  final String id;
  final int? userId;
  final String? ipAddress;
  final String? userAgent;
  final String payload;
  final int lastActivity;

  Session({
    required this.id,
    this.userId,
    this.ipAddress,
    this.userAgent,
    required this.payload,
    required this.lastActivity,
  });

  // Convert a Session object into a Map
  Map<String, dynamic> toJson() => {
    'id': id,
    'user_id': userId,
    'ip_address': ipAddress,
    'user_agent': userAgent,
    'payload': payload,
    'last_activity': lastActivity,
  };

  // Create a Session object from a Map
  factory Session.fromJson(Map<String, dynamic> json) => Session(
    id: json['id'],
    userId: json['user_id'],
    ipAddress: json['ip_address'],
    userAgent: json['user_agent'],
    payload: json['payload'],
    lastActivity: json['last_activity'],
  );
}
