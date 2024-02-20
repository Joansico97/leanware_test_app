import 'package:leanware_test_app/domain/models/models.dart';

class DinerModel {
  final String? dinerName;
  final int? table;
  final List<ProductModel>? order;

  DinerModel({
    required this.dinerName,
    required this.table,
    required this.order,
  });

  DinerModel copyWith({
    String? dinerName,
    int? table,
    List<ProductModel>? order,
  }) =>
      DinerModel(
        dinerName: dinerName ?? this.dinerName,
        table: table ?? this.table,
        order: order ?? this.order,
      );

  factory DinerModel.fromJson(Map<String, dynamic> json) => DinerModel(
        dinerName: json["diner_name"],
        table: json["table"],
        order: List<ProductModel>.from(json["order"].map((x) => ProductModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "diner_name": dinerName,
        "table": table,
        "order": List<ProductModel>.from(order!.map((x) => x)),
      };
}
