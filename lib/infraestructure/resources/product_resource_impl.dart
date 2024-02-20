import 'package:either_dart/either.dart';
import 'package:leanware_test_app/core/utils/logger.dart';
import 'package:leanware_test_app/domain/models/product_model.dart';
import 'package:leanware_test_app/domain/repositories/database_repository.dart';
import 'package:leanware_test_app/domain/resources/resources.dart';

class ProductResourceImpl implements ProductResource {
  ProductResourceImpl(this._databaseRepository);

  final DatabaseRepository _databaseRepository;

  @override
  Either<String, List<ProductModel>> addProductToOrder() {
    Log().debug('Agrego producto a la lista');
    return const Right([]);
  }

  @override
  Either<String, List<ProductModel>> deleteProductToOrder() {
    Log().debug('Elimino producto de la lista');
    return const Right([]);
  }

  @override
  Future<Either<String, List<ProductModel>>> getAllProducts() async {
    final List<ProductModel> productList = [];
    final data = await _databaseRepository.get(path: 'Products');
    Log().debug(data.isRight);
    data.fold((l) => ['error'], (r) {
      for (var i = 0; i < r['data'].length; i++) {
        productList.add(ProductModel.fromJson(r['data'][i]));
      }
    });
    return Right(productList);
  }
}
