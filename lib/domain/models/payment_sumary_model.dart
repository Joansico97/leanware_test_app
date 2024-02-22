class PaymentSumaryModel {
  double? totalPayment;
  double? tip;
  final String diner;

  PaymentSumaryModel({
    required this.totalPayment,
    required this.tip,
    required this.diner,
  });

  PaymentSumaryModel copyWith({
    double? totalPayment,
    double? tip,
    String? diner,
  }) =>
      PaymentSumaryModel(
        totalPayment: totalPayment ?? this.totalPayment,
        tip: tip ?? this.tip,
        diner: diner ?? this.diner,
      );

  factory PaymentSumaryModel.fromMap(Map<String, dynamic> json) => PaymentSumaryModel(
        totalPayment: json["total_payment"] == null ? 0.0 : json["total_payment"]?.toDouble(),
        tip: json["tip"] == null ? 0.0 : json["tip"]?.toDouble(),
        diner: json["diner"],
      );

  Map<String, dynamic> toMap() => {
        "total_payment": totalPayment,
        "tip": tip,
        "diner": diner,
      };
}
