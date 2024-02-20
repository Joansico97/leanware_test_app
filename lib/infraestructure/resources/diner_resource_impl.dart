import 'package:either_dart/either.dart';
import 'package:leanware_test_app/core/utils/utils.dart';
import 'package:leanware_test_app/domain/models/diner_model.dart';
import 'package:leanware_test_app/domain/resources/resources.dart';

class DinerResourceImpl implements DinerResource {
  @override
  Either<String, List<DinerModel>> addNewDiner() {
    Log().debug('agrego nuevo comensal');
    return const Right([]);
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
