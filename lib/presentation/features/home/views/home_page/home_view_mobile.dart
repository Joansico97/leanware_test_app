import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeViewMobile extends StatelessWidget {
  const HomeViewMobile({Key? key, required this.ref}) : super(key: key);

  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('home page mobile'),
      ),
    );
  }
}
