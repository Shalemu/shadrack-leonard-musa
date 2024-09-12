class Migration {
  final int id;
  final String migration;
  final int batch;

  Migration({
    required this.id,
    required this.migration,
    required this.batch,
  });

  // Convert a Migration into a Map.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'migration': migration,
      'batch': batch,
    };
  }

  // Extract a Migration from a Map.
  factory Migration.fromMap(Map<String, dynamic> map) {
    return Migration(
      id: map['id'],
      migration: map['migration'],
      batch: map['batch'],
    );
  }
}