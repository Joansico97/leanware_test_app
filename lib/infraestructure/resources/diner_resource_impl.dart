import 'package:either_dart/either.dart';
import 'package:leanware_test_app/core/utils/utils.dart';
import 'package:leanware_test_app/domain/models/models.dart';
import 'package:leanware_test_app/domain/resources/resources.dart';

class DinerResourceImpl implements DinerResource {
  @override
  Either<String, List<DinerModel>> addNewDiner(
      {required String dinerName, required String table, required List<DinerModel> dinerList}) {
    Log().debug('agrego nuevo comensal');
    final newDiner = DinerModel(
      dinerName: dinerName,
      table: int.parse(table),
      order: [],
      payment: PaymentSumaryModel(
        totalPayment: 0,
        tip: 0,
        diner: '',
      ),
    );
    dinerList.add(newDiner);
    return Right(dinerList);
  }

  @override
  Either<String, List<DinerModel>> assignDinerOrder() {
    Log().debug('asigno orden a un comensal');
    return const Right([]);
  }

  @override
  Either<String, List<DinerModel>> deleteDiner() {
    Log().debug('elimino un comensal');
    return const Right([]);
  }

  @override
  Either<String, List<DinerModel>> editDinerOrder() {
    Log().debug('edito orden de un comensal');
    return const Right([]);
  }
}
