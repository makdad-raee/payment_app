import 'package:flutter/material.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/custom_button_bloc_consumer.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/payment_method_list_view.dart';

class PaymentMethodeButtonSheet extends StatelessWidget {
  const PaymentMethodeButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 16,
          ),
          PaymentMethodeListView(),
          SizedBox(
            height: 32,
          ),
          CustomButtonBlocConsumer(),
        ],
      ),
    );
  }
}
