import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:leanware_test_app/domain/repositories/product_repository.dart';
import 'package:leanware_test_app/infraestructure/repositories/product_repository_impl.dart';
import 'package:leanware_test_app/infraestructure/resources/resources_impl.dart';

final productProvider = Provider<ProductRepository>(
  (ref) => ProductRepositoryImpl(
    ProductResourceImpl(
      DatabaseResourceFirebase(
        ref,
      ),
    ),
  ),
);
