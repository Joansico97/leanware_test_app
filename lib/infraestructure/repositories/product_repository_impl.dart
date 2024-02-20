import 'package:either_dart/either.dart';
import 'package:leanware_test_app/core/utils/api_exception.dart';
import 'package:leanware_test_app/domain/models/product_model.dart';
import 'package:leanware_test_app/domain/repositories/product_repository.dart';
import 'package:leanware_test_app/domain/resources/resources.dart';

class ProductRepositoryImpl implements ProductRepository {
  ProductRepositoryImpl(this._productResource);

  final ProductResource _productResource;
  @override
  Either<String, List<ProductModel>> addProductToOrder() => _productResource.addProductToOrder();

  @override
  Either<String, List<ProductModel>> deleteProductToOrder() => _productResource.deleteProductToOrder();

  @override
  Future<Either<ApiException, List<ProductModel>>> getAllProducts() async => _productResource.getAllProducts();
}
