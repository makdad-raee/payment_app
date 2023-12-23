import 'package:flutter/material.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/payment_methode_item.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PaymentMethodeItem(isActive: false,)
      ],
    );
  }


}