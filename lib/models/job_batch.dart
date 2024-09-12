class JobBatch {
  final String id;
  final String name;
  final int totalJobs;
  final int pendingJobs;
  final int failedJobs;
  final String failedJobIds;
  final String? options;
  final int? cancelledAt;
  final int createdAt;
  final int? finishedAt;

  JobBatch({
    required this.id,
    required this.name,
    required this.totalJobs,
    required this.pendingJobs,
    required this.failedJobs,
    required this.failedJobIds,
    this.options,
    this.cancelledAt,
    required this.createdAt,
    this.finishedAt,
  });

  // Convert a JobBatch into a Map.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'total_jobs': totalJobs,
      'pending_jobs': pendingJobs,
      'failed_jobs': failedJobs,
      'failed_job_ids': failedJobIds,
      'options': options,
      'cancelled_at': cancelledAt,
      'created_at': createdAt,
      'finished_at': finishedAt,
    };
  }

  // Extract a JobBatch from a Map.
  factory JobBatch.fromMap(Map<String, dynamic> map) {
    return JobBatch(
      id: map['id'],
      name: map['name'],
      totalJobs: map['total_jobs'],
      pendingJobs: map['pending_jobs'],
      failedJobs: map['failed_jobs'],
      failedJobIds: map['failed_job_ids'],
      options: map['options'],
      cancelledAt: map['cancelled_at'],
      createdAt: map['created_at'],
      finishedAt: map['finished_at'],
    );
  }
}