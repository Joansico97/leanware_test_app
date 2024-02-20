import 'package:either_dart/either.dart';
import 'package:leanware_test_app/domain/models/payment_sumary_model.dart';
import 'package:leanware_test_app/domain/repositories/repositories.dart';
import 'package:leanware_test_app/domain/resources/resources.dart';

class PaymentSumaryRepositoryImpl implements PaymentSumaryRepository {
  PaymentSumaryRepositoryImpl(this._paymentSumaryResource);

  final PaymentSumaryResource _paymentSumaryResource;
  @override
  Either<String, PaymentSumaryModel> generatePaymentSumary() => _paymentSumaryResource.generatePaymentSumary();
}
