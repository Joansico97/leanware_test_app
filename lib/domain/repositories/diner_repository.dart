import 'package:either_dart/either.dart';
import 'package:leanware_test_app/domain/models/models.dart';

abstract class DinerRepository {
  Either<String, List<DinerModel>> addNewDiner(
      {required String dinerName, required String table, required List<DinerModel> dinerList});
  Either<String, List<DinerModel>> deleteDiner();
  Either<String, List<DinerModel>> assignDinerOrder();
  Either<String, List<DinerModel>> editDinerOrder();
}
