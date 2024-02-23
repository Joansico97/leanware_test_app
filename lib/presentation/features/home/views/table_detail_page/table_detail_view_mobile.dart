import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:leanware_test_app/core/extensions/build_context_extensions.dart';
import 'package:leanware_test_app/core/utils/utils.dart';
import 'package:leanware_test_app/core/extensions/extensions.dart';
import 'package:leanware_test_app/domain/models/models.dart';
import 'package:leanware_test_app/presentation/features/home/provider/home_provider.dart';
import 'package:leanware_test_app/presentation/widgets/rounded_button.dart';
import 'package:leanware_test_app/presentation/widgets/widgets.dart';

class TableDetailViewMobile extends StatelessWidget {
  const TableDetailViewMobile({
    super.key,
    required this.ref,
  });
  final WidgetRef ref;
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeProvider);
    final notifier = ref.watch(homeProvider.notifier);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        onPressed: () => notifier.createDinerShowModal(),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          Container(
            height: size.height(context, .2),
            padding: size.horizontal(context, .1),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(size.width(context, .15)),
                bottomRight: Radius.circular(size.width(context, .15)),
              ),
            ),
            child: Row(
              children: [
                Text(
                  '${context.locale.tableTitle} ${state.currentTable.tableName}',
                  style: AppStyles.title.copyWith(
                    color: Colors.white,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () => notifier.paymentProcessShowModal(notifier.getIndex(state.currentTable)),
                  child: Container(
                    height: size.height(context, .08),
                    width: size.height(context, .08),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.beige,
                    ),
                    child: Icon(
                      Icons.attach_money_sharp,
                      size: size.width(context, .1),
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: state.currentTable.diners!.length,
              itemBuilder: (context, index) => DinerTable(
                showProducts: state.listBool[index],
                label: state.currentTable.diners![index].dinerName!,
                total: state.currentTable.diners![index].payment!.totalPayment.toString(),
                onShowItems: () => notifier.showItems(state.currentTable.diners![index], index),
                showModal: () => notifier.addProductShowModal(state.currentTable.diners![index]),
                products: state.currentTable.diners![index].order!,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DinerTable extends StatelessWidget {
  const DinerTable({
    super.key,
    required this.showProducts,
    required this.label,
    required this.total,
    required this.onShowItems,
    required this.showModal,
    required this.products,
  });

  final bool showProducts;
  final String label;
  final String total;
  final VoidCallback onShowItems;
  final VoidCallback showModal;
  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: size.fullWidth(context),
          margin: EdgeInsets.only(
            left: size.width(context, .05),
            right: size.width(context, .05),
            bottom: showProducts ? 0 : size.height(context, .02),
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black12,
              width: 2,
            ),
            borderRadius: size.borderRadius(context, .01),
            color: Colors.black.withOpacity(.1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                label,
                style: AppStyles.subTitleBold,
              ),
              SizedBox(width: size.width(context, .02)),
              Row(
                children: [
                  Text(
                    '\$$total',
                    style: AppStyles.subTitleBold,
                  ),
                  SizedBox(width: size.width(context, .02)),
                  RoundButton(onTap: showModal, icon: Icons.add),
                  // SizedBox(width: size.width(context, .01)),
                  IconButton(
                    onPressed: onShowItems,
                    icon: Icon(
                      showProducts ? Icons.keyboard_arrow_down_rounded : Icons.keyboard_arrow_up_rounded,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        showProducts
            ? Container(
                margin: EdgeInsets.only(
                  left: size.width(context, .08),
                  right: size.width(context, .08),
                  bottom: size.height(context, .02),
                ),
                color: Colors.black12,
                child: SizedBox(
                  height: size.height(context, products.length.toDouble() * .03),
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: products.length,
                    itemBuilder: (context, index) => Padding(
                      padding: size.horizontal(context, .05),
                      child: Row(
                        children: [
                          Text(
                            products[index].name!,
                            style: AppStyles.bodyL,
                          ),
                          const Spacer(),
                          Text(
                            '${products[index].price!}',
                            style: AppStyles.bodyL,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
