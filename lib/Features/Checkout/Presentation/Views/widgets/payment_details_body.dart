import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:payment_app/Core/Utiles/widgets/cutom_button.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/thank_you_view.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/custom_credit_card.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/payment_method_list_view.dart';

class PaymentDetailsBody extends StatefulWidget {
  const PaymentDetailsBody({super.key});

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      const SliverToBoxAdapter(
        child: PaymentMethodeListView(),
      ),
      SliverToBoxAdapter(
        child: CustomCreditCard(
            formKey: formKey, autovalidateMode: autovalidateMode),
      ),
      SliverFillRemaining(
        hasScrollBody: false,
        child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12, left: 20, right: 20),
              child: CustomButton(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();

                      log('payment');
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ThankYouView(),
                          ));
                    }
                    setState(() {});
                  },
                  text: 'pay'),
            )),
      )
    ]);
  }
}
