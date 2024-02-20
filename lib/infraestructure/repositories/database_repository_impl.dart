import 'package:either_dart/either.dart';
import 'package:leanware_test_app/core/utils/utils.dart';
import 'package:leanware_test_app/domain/repositories/repositories.dart';
import 'package:leanware_test_app/domain/resources/resources.dart';

class DatabaseRepositoryImpl implements DatabaseRepository {
  DatabaseRepositoryImpl(this._databaseResource);

  final DatabaseResource _databaseResource;
  @override
  Future<Either<ApiException, Map<String, dynamic>>> get(
          {required String path, Map<String, dynamic>? queryparameters, Map<String, dynamic>? headers}) async =>
      _databaseResource.get(path: path, queryparameters: queryparameters, headers: headers);
}
