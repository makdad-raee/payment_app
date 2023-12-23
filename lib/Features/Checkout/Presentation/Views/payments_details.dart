import 'package:flutter/material.dart';
import 'package:payment_app/Core/Utiles/widgets/custom_appar.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: buildAppBar('Payment Details'),
    );
  }
}