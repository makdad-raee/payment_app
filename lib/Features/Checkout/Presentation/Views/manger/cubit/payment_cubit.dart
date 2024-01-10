import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/manger/cubit/payments_states.dart';
import 'package:payment_app/Features/Checkout/data/models/payment_intent_input_model.dart';
import 'package:payment_app/Features/Checkout/data/repos/checkout_repo.dart';

class PaymentCubit extends Cubit<PaymentState> {
  final CheckoutRepo checkoutRepo;
  PaymentCubit(this.checkoutRepo) : super(PaymentInitialState());
  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    emit(PaymentLoaadingState());
    var data = await checkoutRepo.makePayment(
        paymentIntentInputModel: paymentIntentInputModel);
    data.fold((l) {
      emit(PaymentErrorState(errorMessage: l.errorMessage));
      print(l.errorMessage.toString());
    }, (r) => emit(PaymentSuccesesState()));
  }

  @override
  void onChange(Change<PaymentState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
