import 'package:leanware_test_app/domain/models/models.dart';

class TableModel {
  final String? tableName;
  List<DinerModel>? diners;

  TableModel({
    this.tableName,
    this.diners,
  });

  TableModel copyWith({
    String? tableName,
    List<DinerModel>? diners,
  }) =>
      TableModel(
        tableName: tableName ?? this.tableName,
        diners: diners ?? this.diners,
      );

  factory TableModel.fromJson(Map<String, dynamic> json) => TableModel(
        tableName: json["tableName"],
        diners: json["diners"] == null ? [] : List<DinerModel>.from(json["diners"]!.map((x) => DinerModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "tableName": tableName,
        "diners": diners == null ? [] : List<dynamic>.from(diners!.map((x) => x)),
      };
}
