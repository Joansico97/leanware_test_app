class ProductModel {
  String? id;
  String? name;
  double? price;

  ProductModel({
    this.id,
    this.name,
    this.price,
  });

  ProductModel copyWith({
    String? id,
    String? name,
    double? price,
  }) =>
      ProductModel(
        id: id ?? this.id,
        name: name ?? this.name,
        price: price ?? this.price,
      );

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"] ?? "",
        name: json["name"] ?? "",
        price: json["price"]?.toDouble() ?? 0.0,
      );

  Map<String, dynamic> toJson() => {
        "id": id ?? "",
        "name": name ?? "",
        "price": price ?? 0.0,
      };
}
