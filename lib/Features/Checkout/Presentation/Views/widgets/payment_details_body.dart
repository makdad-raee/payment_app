import 'package:flutter/material.dart';
import 'package:payment_app/Core/Utiles/widgets/cutom_button.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/custom_credit_card.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/payment_method_list_view.dart';

class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: PaymentMethodeListView(),
      ),
      SliverToBoxAdapter(
        child: CustomCreditCard(),
      ),
      SliverFillRemaining(
        hasScrollBody: false,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 12,left: 20,right: 20),
            child: CustomButton(),
          )),
      )
      
    
    ]);
  }
}
