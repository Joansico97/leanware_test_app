import 'package:either_dart/either.dart';
import 'package:leanware_test_app/domain/models/models.dart';

abstract class DinerRepository {
  Either<String, List<DinerModel>> addNewDiner();
  Either<String, List<DinerModel>> deleteDiner();
  Either<String, List<DinerModel>> assignDinerOrder();
  Either<String, List<DinerModel>> editDinerOrder();
}
