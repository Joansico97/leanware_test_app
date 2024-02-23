import 'package:either_dart/either.dart';
import 'package:leanware_test_app/domain/models/models.dart';
import 'package:leanware_test_app/domain/resources/resources.dart';

class PaymentSumaryResourceImpl implements PaymentSumaryResource {
  @override
  Either<String, PaymentSumaryModel> generatePaymentSumary() {
    return Right(PaymentSumaryModel.fromMap({}));
  }
}
