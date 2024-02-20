import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leanware_test_app/core/router/router.dart';
import 'package:leanware_test_app/domain/models/models.dart';
import 'package:leanware_test_app/infraestructure/providers/providers.dart';

part 'home_provider.freezed.dart';
part 'home_provider.g.dart';

final homeProvider = StateNotifierProvider<HomeFeatureEvents, HomeFeatureModel>(
  (ref) => HomeFeatureEvents(ref),
);

@freezed
class HomeFeatureModel with _$HomeFeatureModel {
  const factory HomeFeatureModel({
    required bool isCharging,
    required List<ProductModel> productsList,
    required List<DinerModel> tables,
  }) = _HomeFeatureModel;

  factory HomeFeatureModel.fromJson(Map<String, dynamic> json) => _$HomeFeatureModelFromJson(json);
}

class HomeFeatureEvents extends StateNotifier<HomeFeatureModel> {
  HomeFeatureEvents(this.ref)
      : super(
          const HomeFeatureModel(
            isCharging: false,
            productsList: [],
            tables: [],
          ),
        );

  final Ref ref;
  final TextEditingController tableTextController = TextEditingController();

  Future<void> getProducts() async {
    final response = await ref.watch(productProvider).getAllProducts();
    state = state.copyWith(productsList: response.right);
  }

  void createTable() {
    final newTable = DinerModel(
      dinerName: '',
      table: int.parse(tableTextController.text),
      order: [],
    );
    tableTextController.text = '';
    List<DinerModel> currentList = [...state.tables];
    currentList.add(newTable);
    state = state.copyWith(tables: currentList);
  }

  void showModal() {
    showDialog(
      context: rootNavigatorKey.currentContext!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Crear mesa'),
          content: TextFormField(
            controller: tableTextController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Ingrese número de la mesa'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                createTable();
                ref.read(routerProvider).pushNamed(RouterPaths.tableDetails);
              },
              child: const Text('Crear'),
            ),
          ],
        );
      },
    );
  }
}
