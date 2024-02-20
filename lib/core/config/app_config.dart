import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:leanware_test_app/core/config/firebase_options.dart';

Future<void> initConfig() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
