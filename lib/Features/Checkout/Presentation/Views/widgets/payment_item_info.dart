import 'package:flutter/material.dart';
import 'package:payment_app/Core/Utiles/styles.dart';

class PaymmentItemInfo extends StatelessWidget {
  const PaymmentItemInfo({super.key, required this.title, required this.value});
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, textAlign: TextAlign.center, style: Styles.textStylebold18),
        Text(
          value,
          style: Styles.textStyle18,
        ),
      ],
    );
  }
}
