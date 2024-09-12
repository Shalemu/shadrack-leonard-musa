class Item {
  final int? id;
  final String? barcode;
  final String? invoice;
  final int type;
  final String name;
  final String img;
  final int? itemImageId;
  final int? productId;
  final int? variantId;
  final double purchasePrice;
  final double salePrice;
  final String? saleRoboPrice;
  final String? saleNusuPrice;
  final String? saleNusuroboPrice;
  final int canExpire;
  final int hasWarrante;
  final int showManufacturer;
  final String? warranteTime;
  final String unit;
  final int status;
  final String? exprDate;
  final int originProduct;
  final String? variantValue;
  final String? variantQuantity;
  final String? manufactureDate;
  final String? deletedAt;
  final String? createdAt;
  final String? updatedAt;

  Item({
    this.id,
    this.barcode,
    this.invoice,
    required this.type,
    required this.name,
    required this.img,
    this.itemImageId,
    this.productId,
    this.variantId,
    required this.purchasePrice,
    required this.salePrice,
    this.saleRoboPrice,
    this.saleNusuPrice,
    this.saleNusuroboPrice,
    required this.canExpire,
    required this.hasWarrante,
    required this.showManufacturer,
    this.warranteTime,
    required this.unit,
    required this.status,
    this.exprDate,
    required this.originProduct,
    this.variantValue,
    this.variantQuantity,
    this.manufactureDate,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'barcode': barcode,
    'invoice': invoice,
    'type': type,
    'name': name,
    'img': img,
    'item_image_id': itemImageId,
    'product_id': productId,
    'variant_id': variantId,
    'purchase_price': purchasePrice,
    'sale_price': salePrice,
    'sale_robo_price': saleRoboPrice,
    'sale_nusu_price': saleNusuPrice,
    'sale_nusurobo_price': saleNusuroboPrice,
    'can_expire': canExpire,
    'has_warrante': hasWarrante,
    'show_manufacturer': showManufacturer,
    'warrante_time': warranteTime,
    'unit': unit,
    'status': status,
    'expr_date': exprDate,
    'origin_product': originProduct,
    'variant_value': variantValue,
    'variant_quantity': variantQuantity,
    'manufacture_date': manufactureDate,
    'deleted_at': deletedAt,
    'created_at': createdAt,
    'updated_at': updatedAt,
  };

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    id: json['id'],
    barcode: json['barcode'],
    invoice: json['invoice'],
    type: json['type'],
    name: json['name'],
    img: json['img'],
    itemImageId: json['item_image_id'],
    productId: json['product_id'],
    variantId: json['variant_id'],
    purchasePrice: json['purchase_price'],
    salePrice: json['sale_price'],
    saleRoboPrice: json['sale_robo_price'],
    saleNusuPrice: json['sale_nusu_price'],
    saleNusuroboPrice: json['sale_nusurobo_price'],
    canExpire: json['can_expire'],
    hasWarrante: json['has_warrante'],
    showManufacturer: json['show_manufacturer'],
    warranteTime: json['warrante_time'],
    unit: json['unit'],
    status: json['status'],
    exprDate: json['expr_date'],
    originProduct: json['origin_product'],
    variantValue: json['variant_value'],
    variantQuantity: json['variant_quantity'],
    manufactureDate: json['manufacture_date'],
    deletedAt: json['deleted_at'],
    createdAt: json['created_at'],
    updatedAt: json['updated_at'],
  );
}
