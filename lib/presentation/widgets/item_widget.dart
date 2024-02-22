import 'package:flutter/material.dart';
import 'package:leanware_test_app/core/utils/utils.dart';
import 'package:leanware_test_app/domain/models/models.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.product,
    required this.onAdd,
  });

  final ProductModel product;
  final VoidCallback onAdd;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onAdd,
      child: Container(
        padding: size.vertical(context, .02),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: AppColors.grey.withOpacity(.2),
              width: 2,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              product.name!,
              textAlign: TextAlign.left,
              style: AppStyles.bodyL.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${product.price!}',
              style: AppStyles.bodyL.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
