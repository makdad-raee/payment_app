import 'package:dartz/dartz.dart';
import 'package:payment_app/Core/Utiles/stripe_services.dart';
import 'package:payment_app/Core/errors/failures.dart';
import 'package:payment_app/Features/Checkout/data/models/payment_intent_input_model.dart';
import 'package:payment_app/Features/Checkout/data/repos/checkout_repo.dart';

class CheckoutRepoImpl extends CheckoutRepo {
  final StripeServices stripeServices = StripeServices();
  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripeServices.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);
      return right(null);
    } catch (e) {
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
