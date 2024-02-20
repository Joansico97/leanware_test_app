import 'package:either_dart/either.dart';
import 'package:leanware_test_app/domain/helpers/helpers.dart';
import 'package:leanware_test_app/domain/models/models.dart';

abstract class ProductRepository {
  Future<Either<ApiException, List<ProductModel>>> getAllProducts();
  Either<ApiException, List<ProductModel>> addProductToOrder();
  Either<ApiException, List<ProductModel>> deleteProductToOrder();
}
