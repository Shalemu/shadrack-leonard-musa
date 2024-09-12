class Expense {
  final int id;
  final String name;
  final DateTime date;
  final int amount;
  final String? description;
  final int shop;
  final int expenseCategory;
  final int adminId;
  final DateTime? deletedAt;
  final DateTime createdAt;
  final DateTime updatedAt;

  Expense({
    required this.id,
    required this.name,
    required this.date,
    required this.amount,
    this.description,
    required this.shop,
    required this.expenseCategory,
    required this.adminId,
    this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  // Convert an Expense into a Map.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'date': date.toIso8601String(),
      'amount': amount,
      'description': description,
      'shop': shop,
      'expense_category': expenseCategory,
      'admin_id': adminId,
      'deleted_at': deletedAt?.toIso8601String(),
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }

  // Extract an Expense from a Map.
  factory Expense.fromMap(Map<String, dynamic> map) {
    return Expense(
      id: map['id'],
      name: map['name'],
      date: DateTime.parse(map['date']),
      amount: map['amount'],
      description: map['description'],
      shop: map['shop'],
      expenseCategory: map['expense_category'],
      adminId: map['admin_id'],
      deletedAt: map['deleted_at'] != null ? DateTime.parse(map['deleted_at']) : null,
      createdAt: DateTime.parse(map['created_at']),
      updatedAt: DateTime.parse(map['updated_at']),
    );
  }
}