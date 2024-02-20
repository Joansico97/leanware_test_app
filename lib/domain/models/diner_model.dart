import 'package:leanware_test_app/domain/models/models.dart';

class DinerModel {
  final String dinerName;
  final int tabel;
  final List<ProductModel> order;

  DinerModel({
    required this.dinerName,
    required this.tabel,
    required this.order,
  });

  DinerModel copyWith({
    String? dinerName,
    int? tabel,
    List<ProductModel>? order,
  }) =>
      DinerModel(
        dinerName: dinerName ?? this.dinerName,
        tabel: tabel ?? this.tabel,
        order: order ?? this.order,
      );

  factory DinerModel.fromMap(Map<String, dynamic> json) => DinerModel(
        dinerName: json["diner_name"],
        tabel: json["tabel"],
        order: List<ProductModel>.from(json["order"].map((x) => ProductModel.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "diner_name": dinerName,
        "tabel": tabel,
        "order": List<ProductModel>.from(order.map((x) => x)),
      };
}
