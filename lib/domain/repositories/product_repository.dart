import 'package:either_dart/either.dart';
import 'package:leanware_test_app/core/utils/api_exception.dart';

import 'package:leanware_test_app/domain/models/models.dart';

abstract class ProductRepository {
  Future<Either<ApiException, List<ProductModel>>> getAllProducts();
  Either<String, List<ProductModel>> addProductToOrder();
  Either<String, List<ProductModel>> deleteProductToOrder();
}
