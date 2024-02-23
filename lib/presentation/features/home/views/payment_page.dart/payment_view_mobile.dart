import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:leanware_test_app/core/extensions/extensions.dart';
import 'package:leanware_test_app/core/utils/utils.dart';
import 'package:leanware_test_app/domain/models/diner_model.dart';
import 'package:leanware_test_app/presentation/features/home/provider/home_provider.dart';

class PaymentViewMobile extends StatelessWidget {
  const PaymentViewMobile({
    super.key,
    required this.ref,
  });

  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeProvider);
    final notifier = ref.watch(homeProvider.notifier);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: size.symmetric(context, .05, .05),
          child: Column(
            children: [
              Text(
                '${context.locale.billTitle} ${context.locale.tableTitle} ${state.currentTable.tableName}',
                style: AppStyles.title.copyWith(
                  fontSize: size.width(context, .1),
                ),
              ),
              SizedBox(height: size.height(context, .05)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Total:',
                    style: AppStyles.subTitleSmallBold,
                  ),
                  Text(
                    '\$${state.totalPay}',
                    style: AppStyles.subTitleSmallBold,
                  ),
                ],
              ),
              SizedBox(height: size.height(context, .05)),
              Text(
                context.locale.purchaseSummaryTitle,
                style: AppStyles.subTitleSmallBold,
              ),
              const Divider(
                color: AppColors.primary,
              ),
              SizedBox(height: size.height(context, .02)),
              Expanded(
                child: ListView.builder(
                  itemCount: state.currentTable.diners!.length,
                  itemBuilder: (context, index) => Container(
                    margin: size.bottom(context, .05),
                    child: Column(
                      children: [
                        PaymentResume(
                          diner: state.currentTable.diners![index],
                        ),
                        Padding(
                          padding: size.horizontal(context, .07),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Tip: ',
                                    style: AppStyles.bodyL,
                                  ),
                                  const Spacer(),
                                  Text(
                                    '\$${state.currentTable.diners![index].payment!.tip}',
                                    style: AppStyles.bodyL,
                                  )
                                ],
                              ),
                              SizedBox(height: size.height(context, .02)),
                              GestureDetector(
                                onTap: () => notifier.addTipShowModal(state.currentTable.diners![index]),
                                child: Container(
                                  width: size.width(context, .5),
                                  padding: size.vertical(context, .01),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: AppColors.primary,
                                    borderRadius: size.borderRadius(context, .05),
                                  ),
                                  child: Text(
                                    context.locale.tipModalTitle,
                                    style: AppStyles.subTitleSmall.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: size.height(context, .02)),
                              Container(
                                height: 1,
                                color: AppColors.primary.withOpacity(.8),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height(context, .02)),
              GestureDetector(
                onTap: () => notifier.showFinalModal(),
                child: Container(
                  padding: size.symmetric(context, 0, .03),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: size.borderRadius(context, .05),
                  ),
                  child: Text(
                    context.locale.payButton,
                    style: AppStyles.subTitleSmall.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentResume extends StatelessWidget {
  const PaymentResume({
    super.key,
    required this.diner,
  });

  final DinerModel diner;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: size.horizontal(context, .05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '${diner.dinerName}',
                style: AppStyles.subTitleSmallBold,
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    'Total: ',
                    style: AppStyles.subTitleSmallBold,
                  ),
                  Text(
                    '\$${diner.payment!.totalPayment}',
                    style: AppStyles.subTitleSmall,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: size.height(context, .01)),
          Container(
            height: size.height(context, diner.order!.length * .03),
            padding: size.horizontal(context, .02),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: diner.order!.length,
              itemBuilder: (context, index) => Row(
                children: [
                  Text(
                    '${diner.order![index].name}',
                    style: AppStyles.bodyL,
                  ),
                  const Spacer(),
                  Text(
                    '\$${diner.order![index].price}',
                    style: AppStyles.bodyL,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
