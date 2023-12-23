import 'package:flutter/material.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/payment_methode_item.dart';

class PaymentMethodeListView extends StatelessWidget {
  const PaymentMethodeListView({super.key});
  final List<String> paymentMethodeItems = const [
    'assets/images/cart.svg',
    'assets/images/paypal.svg',
    'assets/images/applepay.svg'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: paymentMethodeItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: PaymentMethodeItem(
              image: paymentMethodeItems[index],
            ),
          );
        },
      ),
    );
  }
}
