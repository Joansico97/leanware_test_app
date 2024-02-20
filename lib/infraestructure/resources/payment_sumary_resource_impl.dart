import 'package:either_dart/either.dart';
import 'package:leanware_test_app/core/utils/utils.dart';
import 'package:leanware_test_app/domain/models/payment_sumary_model.dart';
import 'package:leanware_test_app/domain/resources/resources.dart';

class PaymentSumaryResourceImpl implements PaymentSumaryResource {
  @override
  Either<String, PaymentSumaryModel> generatePaymentSumary() {
    Log().debug('message');
    return Right(PaymentSumaryModel.fromMap({}));
  }
}
