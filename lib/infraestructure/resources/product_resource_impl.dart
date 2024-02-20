import 'package:either_dart/either.dart';
import 'package:leanware_test_app/core/utils/logger.dart';
import 'package:leanware_test_app/domain/helpers/api_helper.dart';
import 'package:leanware_test_app/domain/models/product_model.dart';
import 'package:leanware_test_app/domain/resources/resources.dart';

class ProductResourceImpl implements ProductResource {
  @override
  Either<ApiException, List<ProductModel>> addProductToOrder() {
    Log().debug('Agrego producto a la lista');
    return const Right([]);
  }

  @override
  Either<ApiException, List<ProductModel>> deleteProductToOrder() {
    Log().debug('Elimino producto de la lista');
    return const Right([]);
  }

  @override
  Future<Either<ApiException, List<ProductModel>>> getAllProducts() async {
    Log().debug('Traigo todos los productos de la base de datos');
    return const Right([]);
  }
}
