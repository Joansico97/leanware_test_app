import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leanware_test_app/core/extensions/extensions.dart';
import 'package:leanware_test_app/core/router/router.dart';
import 'package:leanware_test_app/core/utils/utils.dart';
import 'package:leanware_test_app/domain/models/models.dart';
import 'package:leanware_test_app/infraestructure/providers/providers.dart';
import 'package:leanware_test_app/presentation/widgets/widgets.dart';

part 'home_provider.freezed.dart';
part 'home_provider.g.dart';

final homeProvider = StateNotifierProvider<HomeFeatureEvents, HomeFeatureModel>(
  (ref) => HomeFeatureEvents(ref),
);

@freezed
class HomeFeatureModel with _$HomeFeatureModel {
  const factory HomeFeatureModel({
    required int currentIndex,
    required List<ProductModel> productsList,
    required List<TableModel> tables,
    required TableModel currentTable,
    required DinerModel currentDiner,
    required List<bool> listBool,
  }) = _HomeFeatureModel;

  factory HomeFeatureModel.fromJson(Map<String, dynamic> json) => _$HomeFeatureModelFromJson(json);
}

class HomeFeatureEvents extends StateNotifier<HomeFeatureModel> {
  HomeFeatureEvents(this.ref)
      : super(
          HomeFeatureModel(
            currentIndex: 0,
            productsList: [],
            tables: [],
            currentTable: TableModel.fromJson({}),
            currentDiner: DinerModel.fromJson({}),
            listBool: [],
          ),
        );

  final Ref ref;
  final TextEditingController tableTextController = TextEditingController();
  final TextEditingController dinerTextController = TextEditingController();

  Future<void> getProducts() async {
    final response = await ref.watch(productProvider).getAllProducts();
    state = state.copyWith(productsList: response.right);
  }

  void createTable() {
    final newTable = TableModel(
      tableName: tableTextController.text,
      diners: [],
    );
    tableTextController.text = '';
    List<TableModel> currentList = [...state.tables];
    currentList.add(newTable);
    state = state.copyWith(
      tables: currentList,
      currentTable: currentList[currentList.length - 1],
      currentIndex: currentList.length - 1,
    );
  }

  void addProduct(ProductModel product) {
    DinerModel currentDiner = state.currentDiner;
    TableModel currentTable = state.currentTable;
    final newList = ref.read(productProvider).addProductToOrder(
          productList: state.currentDiner.order!,
          product: product,
        );
    currentDiner.order = newList.right;
    double total = currentDiner.payment!.totalPayment ?? 0;
    total += product.price!;
    currentDiner.payment!.totalPayment = total.doubleFixed;
    for (int i = 0; i < currentTable.diners!.length; i++) {
      if (currentTable.diners![i].dinerName!.contains(currentDiner.dinerName!)) {
        currentTable.diners![i] = currentDiner;
      }
    }
    state = state.copyWith(currentTable: currentTable);
  }

  void createDiner(int index) {
    final dinerList = ref.read(dinerProvider).addNewDiner(
          dinerName: dinerTextController.text,
          table: state.tables[index].tableName!,
          dinerList: state.tables[index].diners!,
        );
    dinerTextController.text = '';
    List<TableModel> currentList = [...state.tables];
    currentList[index].diners = dinerList.right;
    List<bool> listBoolProv = [...state.listBool];
    listBoolProv.add(false);
    state = state.copyWith(
      tables: currentList,
      currentTable: currentList[index],
      listBool: listBoolProv,
    );
  }

  void showItems(int index) {
    List<bool> listBoolProv = [...state.listBool];
    listBoolProv[index] = !listBoolProv[index];
    state = state.copyWith(listBool: listBoolProv);
  }

  void createTableShowModal() {
    showDialog(
      context: rootNavigatorKey.currentContext!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            context.locale.tableModalTitle,
            style: AppStyles.subTitleBold,
          ),
          content: TextFormField(
            controller: tableTextController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: context.locale.tableModalMessage,
              labelStyle: AppStyles.bodyS,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                createTable();
                ref.read(routerProvider).pushNamed(
                      RouterPaths.tableDetails,
                    );
              },
              child: Text(
                context.locale.tableModalButton,
                style: AppStyles.bodyS,
              ),
            ),
          ],
        );
      },
    );
  }

  void createDinerShowModal() {
    showDialog(
      context: rootNavigatorKey.currentContext!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            context.locale.dinerModalTitle,
            style: AppStyles.subTitleBold,
          ),
          content: TextFormField(
            controller: dinerTextController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: context.locale.dinerModalMessage,
              labelStyle: AppStyles.bodyS,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                createDiner(state.currentIndex);
                Log().info(state.currentIndex);
              },
              child: Text(
                context.locale.dinerModalButton,
                style: AppStyles.bodyS,
              ),
            ),
          ],
        );
      },
    );
  }

  void paymentProcessShowModal() {
    showDialog(
      context: rootNavigatorKey.currentContext!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            context.locale.paymentModalTitle,
            textAlign: TextAlign.center,
            style: AppStyles.subTitleBold,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                context.locale.cancelButton,
                style: AppStyles.bodyS.copyWith(
                  color: Colors.red,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                context.locale.confirmButton,
                style: AppStyles.bodyS,
              ),
            ),
          ],
        );
      },
    );
  }

  void addProductShowModal(int index) {
    setCurrentDiner(index);
    showDialog(
      context: rootNavigatorKey.currentContext!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            context.locale.productModalTitle,
            style: AppStyles.bodyL.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          content: SizedBox(
            height: size.height(context, state.productsList.length * .06),
            width: double.maxFinite,
            child: ListView.builder(
              itemCount: state.productsList.length,
              itemBuilder: (context, index) => Item(
                product: state.productsList[index],
                onAdd: () {
                  addProduct(
                    state.productsList[index],
                  );
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
        );
      },
    );
  }

  void editTable(int index) {
    ref.read(routerProvider).pushNamed(RouterPaths.tableDetails);
    List<bool> listBoolProv = [];
    state = state.copyWith(
      currentTable: state.tables[index],
      currentIndex: index,
    );
    for (int i = 0; i < state.currentTable.diners!.length; i++) {
      listBoolProv.add(false);
    }
    state = state.copyWith(listBool: listBoolProv);
    Log().debug(index);
    Log().debug(state.currentIndex);
  }

  void setCurrentDiner(int index) {
    state = state.copyWith(
      currentDiner: state.currentTable.diners![index],
    );
  }
}
