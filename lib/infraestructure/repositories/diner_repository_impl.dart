import 'package:either_dart/either.dart';
import 'package:leanware_test_app/domain/models/diner_model.dart';
import 'package:leanware_test_app/domain/repositories/repositories.dart';
import 'package:leanware_test_app/domain/resources/resources.dart';

class DinerRespositoryImpl implements DinerRepository {
  DinerRespositoryImpl(this._dinerRespositoryImpl);

  final DinerResource _dinerRespositoryImpl;
  @override
  Either<String, List<DinerModel>> addNewDiner(
          {required String dinerName, required String table, required List<DinerModel> dinerList}) =>
      _dinerRespositoryImpl.addNewDiner(
        dinerName: dinerName,
        table: table,
        dinerList: dinerList,
      );

  @override
  Either<String, List<DinerModel>> assignDinerOrder() => _dinerRespositoryImpl.assignDinerOrder();

  @override
  Either<String, List<DinerModel>> deleteDiner() => _dinerRespositoryImpl.deleteDiner();

  @override
  Either<String, List<DinerModel>> editDinerOrder() => _dinerRespositoryImpl.editDinerOrder();
}
