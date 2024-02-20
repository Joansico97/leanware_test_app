import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:leanware_test_app/app.dart';
import 'package:leanware_test_app/core/config/config.dart';

Future<void> main() async {
  await initConfig();
  runApp(const ProviderScope(child: MyApp()));
}
