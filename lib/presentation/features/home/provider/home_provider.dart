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
    required List<bool> canPay,
    required bool canAddTable,
    required List<bool> canAddDiner,
    required double totalPay,
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
            canPay: [],
            canAddTable: false,
            canAddDiner: [],
            totalPay: 0,
          ),
        );

  final Ref ref;
  final TextEditingController tableTextController = TextEditingController();
  final TextEditingController dinerTextController = TextEditingController();
  final TextEditingController tipTextController = TextEditingController();

  Future<void> getProducts() async {
    final response = await ref.watch(productProvider).getAllProducts();
    state = state.copyWith(productsList: response.right);
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

  void addProductShowModal(DinerModel diner) {
    setCurrentDiner(diner);
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
                    diner,
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

  void addProduct(ProductModel product, DinerModel diner) {
    DinerModel currentDiner = state.currentDiner;
    TableModel currentTable = state.currentTable;
    final newList = ref.read(productProvider).addProductToOrder(
          productList: diner.order!,
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

  void showItems(DinerModel diner, int index) {
    for (int i = 0; i < state.currentTable.diners!.length; i++) {
      if (state.currentTable.diners![i].dinerName!.contains(diner.dinerName!)) {
        state = state.copyWith(currentDiner: state.currentTable.diners![i]);
      }
    }
    List<bool> listBoolProv = [...state.listBool];
    listBoolProv[index] = !listBoolProv[index];
    state = state.copyWith(listBool: listBoolProv);
  }

  void addTipShowModal(DinerModel diner) {
    showDialog(
      context: rootNavigatorKey.currentContext!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            context.locale.tipModalTitle,
            style: AppStyles.subTitleBold,
          ),
          content: TextFormField(
            controller: tipTextController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: context.locale.tipModalMessage,
              labelStyle: AppStyles.bodyS,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                addTip(diner);
              },
              child: Text(
                context.locale.tipModalTitle,
                style: AppStyles.bodyS,
              ),
            ),
          ],
        );
      },
    );
  }

  void addTip(DinerModel diner) {
    TableModel currentTable = state.currentTable;
    diner.payment!.tip = diner.payment!.tip! + double.parse(tipTextController.text);
    diner.payment!.totalPayment = diner.payment!.totalPayment! + double.parse(tipTextController.text);
    for (int i = 0; i < currentTable.diners!.length; i++) {
      if (currentTable.diners![i].dinerName!.contains(diner.dinerName!)) {
        currentTable.diners![i] = diner;
      }
    }
    state = state.copyWith(currentTable: currentTable, totalPay: state.totalPay + double.parse(tipTextController.text));
    tipTextController.text = '';
  }

  void paymentProcessShowModal(int index) {
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
                goToPayment(index);
                ref.read(routerProvider).pushNamed(RouterPaths.payment);
              },
              child: Text(
                context.locale.confirmButton,
                style: AppStyles.bodyS.copyWith(),
              ),
            ),
          ],
        );
      },
    );
  }

  void goToPayment(int index) {
    state = state.copyWith(totalPay: 0.0);
    double total = state.totalPay;
    TableModel currentTable = state.tables[index];
    for (int i = 0; i < currentTable.diners!.length; i++) {
      total += currentTable.diners![i].payment!.totalPayment!;
    }
    state = state.copyWith(totalPay: total.doubleFixed);
  }

  void showFinalModal() {
    showDialog(
      context: rootNavigatorKey.currentContext!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            context.locale.purchaseSummaryFinalMessage,
            textAlign: TextAlign.center,
            style: AppStyles.subTitleBold,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                removeTable();
                ref.read(routerProvider).pushNamed(RouterPaths.home);
              },
              child: Text(
                context.locale.confirmButton,
                style: AppStyles.bodyS.copyWith(),
              ),
            ),
          ],
        );
      },
    );
  }

  void removeTable() {
    List<TableModel> lisTables = [...state.tables];
    lisTables.remove(state.currentTable);
    state = state.copyWith(tables: lisTables);
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
  }

  void setCurrentDiner(DinerModel diner) {
    for (int i = 0; i < state.currentTable.diners!.length; i++) {
      if (state.currentTable.diners![i].dinerName!.contains(diner.dinerName!)) {
        state = state.copyWith(
          currentDiner: state.currentTable.diners![i],
        );
      }
    }
  }

  int getIndex(TableModel table) {
    int index = 0;
    for (int i = 0; i < state.tables.length; i++) {
      if (state.tables[i].tableName!.contains(table.tableName!)) {
        index = i;
      }
    }
    return index;
  }
}
