import 'package:either_dart/either.dart';

import 'package:leanware_test_app/domain/models/models.dart';

abstract class ProductRepository {
  Future<Either<String, List<ProductModel>>> getAllProducts();
  Either<String, List<ProductModel>> addProductToOrder(
      {required List<ProductModel> productList, required ProductModel product});
  Either<String, List<ProductModel>> deleteProductToOrder();
}
