extension DoubleExtension on double {
  double get doubleFixed => double.parse(toStringAsFixed(2));
}
