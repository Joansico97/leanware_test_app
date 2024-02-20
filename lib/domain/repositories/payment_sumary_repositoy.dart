import 'package:either_dart/either.dart';
import 'package:leanware_test_app/domain/models/models.dart';

abstract class PaymentSumaryRepository {
  Either<String, PaymentSumaryModel> generatePaymentSumary();
}
