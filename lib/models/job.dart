class Job {
  final int id;
  final String queue;
  final String payload;
  final int attempts;
  final int? reservedAt;
  final int availableAt;
  final int createdAt;

  Job({
    required this.id,
    required this.queue,
    required this.payload,
    required this.attempts,
    this.reservedAt,
    required this.availableAt,
    required this.createdAt,
  });

  // Convert a Job into a Map.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'queue': queue,
      'payload': payload,
      'attempts': attempts,
      'reserved_at': reservedAt,
      'available_at': availableAt,
      'created_at': createdAt,
    };
  }

  // Extract a Job from a Map.
  factory Job.fromMap(Map<String, dynamic> map) {
    return Job(
      id: map['id'],
      queue: map['queue'],
      payload: map['payload'],
      attempts: map['attempts'],
      reservedAt: map['reserved_at'],
      availableAt: map['available_at'],
      createdAt: map['created_at'],
    );
  }
}