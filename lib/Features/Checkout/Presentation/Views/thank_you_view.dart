import 'package:flutter/material.dart';
import 'package:payment_app/Core/Utiles/widgets/custom_appar.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/thank_view_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Transform.translate(
          offset: const Offset(0, -16), child: const ThankYouViewBody()),
    );
  }
}
