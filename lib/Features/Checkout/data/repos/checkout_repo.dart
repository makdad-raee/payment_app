import 'package:dartz/dartz.dart';
import 'package:payment_app/Core/errors/failures.dart';
import 'package:payment_app/Features/Checkout/data/models/payment_intent_input_model.dart';
abstract class CheckoutRepo {
  Future<Either<Failure,void>> makePayment ({required PaymentIntentInputModel paymentIntentInputModel});
}

