import 'package:flutter/material.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/payment_method_list_view.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PaymentMethodeListView(),
      ],
    );
  }
}
