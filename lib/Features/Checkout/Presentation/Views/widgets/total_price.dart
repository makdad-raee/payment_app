import 'package:flutter/cupertino.dart';
import 'package:payment_app/Core/Utiles/styles.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, required this.title, required this.value});
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, textAlign: TextAlign.center, style: Styles.textStyle24),
        const Spacer(),
        Text(value, textAlign: TextAlign.center, style: Styles.textStyle24),
      ],
    );
  }
}
