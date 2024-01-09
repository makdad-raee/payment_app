import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/Core/Utiles/widgets/cutom_button.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/manger/cubit/payment_cubit.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/manger/cubit/payments_states.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/thank_you_view.dart';
import 'package:payment_app/Features/Checkout/data/models/payment_intent_input_model.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
        listener: (context, state) {
          if (state is PaymentSuccesesState) {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const ThankYouView(),
            ));
          }
          if (state is PaymentErrorState) {
            Navigator.of(context).pop();
            SnackBar snackBar = SnackBar(content: Text(state.errorMessage));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        builder: (context, state) => CustomButton(
            onTap: () {
              PaymentIntentInputModel paymentIntentInputModel =
                  PaymentIntentInputModel(amount: '100', currency: 'USD');
              BlocProvider.of<PaymentCubit>(context).makePayment(
                  paymentIntentInputModel: paymentIntentInputModel);
            },
            isLoading: state is PaymentLoaadingState ? true : false,
            text: 'Continue'));
  }
}
