class Audit {
  final int id;
  final String? userType;
  final int? userId;
  final String event;
  final String auditableType;
  final int auditableId;
  final String? oldValues;
  final String? newValues;
  final String? url;
  final String? ipAddress;
  final String? userAgent;
  final String? tags;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Audit({
    required this.id,
    this.userType,
    this.userId,
    required this.event,
    required this.auditableType,
    required this.auditableId,
    this.oldValues,
    this.newValues,
    this.url,
    this.ipAddress,
    this.userAgent,
    this.tags,
    this.createdAt,
    this.updatedAt,
  });

  // Convert an Audit into a Map
  Map<String, dynamic> toJson() => {
    'id': id,
    'user_type': userType,
    'user_id': userId,
    'event': event,
    'auditable_type': auditableType,
    'auditable_id': auditableId,
    'old_values': oldValues,
    'new_values': newValues,
    'url': url,
    'ip_address': ipAddress,
    'user_agent': userAgent,
    'tags': tags,
    'created_at': createdAt?.toIso8601String(),
    'updated_at': updatedAt?.toIso8601String(),
  };

  // Convert a Map into an Audit
  factory Audit.fromJson(Map<String, dynamic> json) => Audit(
    id: json['id'],
    userType: json['user_type'],
    userId: json['user_id'],
    event: json['event'],
    auditableType: json['auditable_type'],
    auditableId: json['auditable_id'],
    oldValues: json['old_values'],
    newValues: json['new_values'],
    url: json['url'],
    ipAddress: json['ip_address'],
    userAgent: json['user_agent'],
    tags: json['tags'],
    createdAt: json['created_at'] != null ? DateTime.parse(json['created_at']) : null,
    updatedAt: json['updated_at'] != null ? DateTime.parse(json['updated_at']) : null,
  );
}