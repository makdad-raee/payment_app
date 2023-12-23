import 'package:flutter/material.dart';
import 'package:payment_app/Core/Utiles/widgets/custom_appar.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/my_cart_view.body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar('My Cart'),
      body: const MyCartViewBody(),
    );
  }
}
