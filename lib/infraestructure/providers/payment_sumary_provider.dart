import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:leanware_test_app/domain/repositories/repositories.dart';
import 'package:leanware_test_app/infraestructure/repositories/payment_sumary_repository_impl.dart';
import 'package:leanware_test_app/infraestructure/resources/resources_impl.dart';

final paymentSumarytProvider =
    Provider<PaymentSumaryRepository>((ref) => PaymentSumaryRepositoryImpl(PaymentSumaryResourceImpl()));
