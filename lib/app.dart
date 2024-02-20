import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:leanware_test_app/core/router/router.dart';
import 'package:leanware_test_app/gen/l10n.dart';

import 'infraestructure/providers/providers.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final locale = ref.watch(localeProvider);
    return MaterialApp.router(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        IntlTrans.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: locale,
      supportedLocales: IntlTrans.delegate.supportedLocales,
      routerConfig: router,
    );
  }
}
