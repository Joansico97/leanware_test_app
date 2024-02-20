class ProductModel {
  final String id;
  final String name;
  final String photo;
  final double price;

  ProductModel({
    required this.id,
    required this.name,
    required this.photo,
    required this.price,
  });

  ProductModel copyWith({
    String? id,
    String? name,
    String? photo,
    double? price,
  }) =>
      ProductModel(
        id: id ?? this.id,
        name: name ?? this.name,
        photo: photo ?? this.photo,
        price: price ?? this.price,
      );

  factory ProductModel.fromMap(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        name: json["name"],
        photo: json["photo"],
        price: json["price"]?.toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "photo": photo,
        "price": price,
      };
}
