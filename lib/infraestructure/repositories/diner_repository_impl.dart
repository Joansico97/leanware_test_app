import 'package:either_dart/either.dart';
import 'package:leanware_test_app/domain/models/diner_model.dart';
import 'package:leanware_test_app/domain/repositories/repositories.dart';
import 'package:leanware_test_app/domain/resources/resources.dart';

class DinerRespositoryImpl implements DinerRepository {
  DinerRespositoryImpl(this._dinerRespositoryImpl);

  final DinerResource _dinerRespositoryImpl;
  @override
  Either<String, List<DinerModel>> addNewDiner() => _dinerRespositoryImpl.addNewDiner();

  @override
  Either<String, List<DinerModel>> assignDinerOrder() => _dinerRespositoryImpl.assignDinerOrder();

  @override
  Either<String, List<DinerModel>> deleteDiner() => _dinerRespositoryImpl.deleteDiner();

  @override
  Either<String, List<DinerModel>> editDinerOrder() => _dinerRespositoryImpl.editDinerOrder();
}
