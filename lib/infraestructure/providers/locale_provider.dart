import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/utils/utils.dart';

final localeProvider = NotifierProvider<_LocaleProvider, Locale>(
  () => _LocaleProvider(),
);

class _LocaleProvider extends Notifier<Locale> {
  @override
  Locale build() {
    return const Locale('en');
  }

  changeLocale(Locale locale) async {
    Log().debug('Change locale to $locale');
  }
}
