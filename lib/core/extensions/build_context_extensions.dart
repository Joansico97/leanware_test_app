import 'package:flutter/material.dart';
import 'package:leanware_test_app/gen/l10n.dart';

extension BuildContextExtension on BuildContext {
  IntlTrans get locale => IntlTrans.of(this);
}
