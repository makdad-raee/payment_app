import 'package:flutter/material.dart';
import 'package:payment_app/Core/Utiles/widgets/custom_appar.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/payment_details_body.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: buildAppBar(title: 'Payment Details'),
      body:const PaymentDetailsBody(),
    );
    
  }
  
}