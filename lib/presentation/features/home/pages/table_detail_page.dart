import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:leanware_test_app/core/utils/utils.dart';
import 'package:leanware_test_app/presentation/features/home/views/views.dart';

class TableDetailPage extends BasePage {
  const TableDetailPage({super.key});

  @override
  Widget? mobileBody(BuildContext context, WidgetRef ref) => TableDetailViewMobile(ref: ref);
  @override
  Widget? webBody(BuildContext context, WidgetRef ref) => TableDetailViewWeb(ref: ref);
}
