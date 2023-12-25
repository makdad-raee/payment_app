import 'package:flutter/material.dart';
import 'package:payment_app/Core/Utiles/styles.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/payment_item_info.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xFFD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 16, left: 22, right: 22),
        child: Column(children: [
          const Text(
            'Thank you!',
            textAlign: TextAlign.center,
            style: Styles.textStyle25,
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            'Your transaction was successful',
            textAlign: TextAlign.center,
            style: Styles.textStyle20,
          ),
          const SizedBox(
            height: 42,
          ),
          const PaymmentItemInfo(title: 'Date', value: '01/24/2023'),
          const SizedBox(
            height: 20,
          ),
          const PaymmentItemInfo(title: 'Time', value: '10:15 AM'),
          const SizedBox(
            height: 20,
          ),
          const PaymmentItemInfo(title: 'To', value: 'Sam Louis'),
        ]),
      ),
    );
  }
}

