class ItemImage {
  final int id;
  final int itemId;
  final String files;
  final DateTime? deletedAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  ItemImage({
    required this.id,
    required this.itemId,
    required this.files,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  // Convert an ItemImage into a Map.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'item_id': itemId,
      'files': files,
      'deleted_at': deletedAt?.toIso8601String(),
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
    };
  }

  // Extract an ItemImage from a Map.
  factory ItemImage.fromMap(Map<String, dynamic> map) {
    return ItemImage(
      id: map['id'],
      itemId: map['item_id'],
      files: map['files'],
      deletedAt: map['deleted_at'] != null ? DateTime.parse(map['deleted_at']) : null,
      createdAt: map['created_at'] != null ? DateTime.parse(map['created_at']) : null,
      updatedAt: map['updated_at'] != null ? DateTime.parse(map['updated_at']) : null,
    );
  }
}