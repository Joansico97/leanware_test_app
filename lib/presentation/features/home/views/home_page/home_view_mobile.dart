import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:leanware_test_app/core/utils/utils.dart';
import 'package:leanware_test_app/presentation/features/home/provider/home_provider.dart';

class HomeViewMobile extends StatelessWidget {
  const HomeViewMobile({Key? key, required this.ref}) : super(key: key);

  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeProvider);
    final notifier = ref.watch(homeProvider.notifier);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => notifier.showModal(),
        child: const Icon(Icons.add),
      ),
      body: Container(
        height: size.fullHeight(context),
        width: size.fullWidth(context),
        padding: size.symmetric(context, .05, .1),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: size.height(context, .1),
                child: TextFormField(),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: state.tables.length,
                  itemBuilder: (context, index) => TableCard(
                    onEdit: () {},
                    onPay: () {},
                    label: notifier.tableTextController.text,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RoundButton extends StatelessWidget {
  const RoundButton({
    super.key,
    required this.onTap,
    required this.icon,
  });

  final VoidCallback onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: size.height(context, .05),
        width: size.height(context, .05),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.grey,
        ),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}

class TableCard extends StatelessWidget {
  const TableCard({
    super.key,
    required this.onEdit,
    required this.onPay,
    required this.label,
  });

  final VoidCallback onEdit;
  final VoidCallback onPay;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height(context, .1),
      width: size.fullWidth(context),
      margin: size.bottom(context, .02),
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
            'Mesa $label',
            style: AppStyles.subTitleBold,
          ),
          Row(
            children: [
              RoundButton(
                onTap: onEdit,
                icon: Icons.edit_note_rounded,
              ),
              SizedBox(width: size.width(context, .02)),
              RoundButton(
                onTap: onPay,
                icon: Icons.attach_money_sharp,
              ),
            ],
          )
        ],
      ),
    );
  }
}
