class FailedJob {
  final int id;
  final String uuid;
  final String connection;
  final String queue;
  final String payload;
  final String exception;
  final DateTime failedAt;

  FailedJob({
    required this.id,
    required this.uuid,
    required this.connection,
    required this.queue,
    required this.payload,
    required this.exception,
    required this.failedAt,
  });

  // Convert a FailedJob into a Map.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'uuid': uuid,
      'connection': connection,
      'queue': queue,
      'payload': payload,
      'exception': exception,
      'failed_at': failedAt.toIso8601String(),
    };
  }

  // Extract a FailedJob from a Map.
  factory FailedJob.fromMap(Map<String, dynamic> map) {
    return FailedJob(
      id: map['id'],
      uuid: map['uuid'],
      connection: map['connection'],
      queue: map['queue'],
      payload: map['payload'],
      exception: map['exception'],
      failedAt: DateTime.parse(map['failed_at']),
    );
  }
}