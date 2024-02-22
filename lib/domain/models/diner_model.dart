import 'package:leanware_test_app/domain/models/models.dart';

class DinerModel {
  final String? dinerName;
  final int? table;
  List<ProductModel>? order;
  PaymentSumaryModel? payment;

  DinerModel({
    required this.dinerName,
    required this.table,
    required this.order,
    required this.payment,
  });

  DinerModel copyWith({
    String? dinerName,
    int? table,
    List<ProductModel>? order,
    PaymentSumaryModel? payment,
  }) =>
      DinerModel(
        dinerName: dinerName ?? this.dinerName,
        table: table ?? this.table,
        order: order ?? this.order,
        payment: payment ?? this.payment,
      );

  factory DinerModel.fromJson(Map<String, dynamic> json) => DinerModel(
        dinerName: json["diner_name"],
        table: json["table"],
        order: json["order"] == null ? [] : List<ProductModel>.from(json["order"].map((x) => ProductModel.fromJson(x))),
        payment: json["payment"],
      );

  Map<String, dynamic> toJson() => {
        "diner_name": dinerName,
        "table": table,
        "order": order == null ? [] : List<ProductModel>.from(order!.map((x) => x)),
        "payment": payment,
      };
}
