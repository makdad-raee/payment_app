import 'package:flutter/material.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/payment_method_list_view.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
class PaymentDetailsBody extends StatelessWidget {
  const PaymentDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [PaymentMethodeListView(),
      CustomCreditCard()],
    );
  }
}
class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({super.key});

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
   String cardNumber='';

   String expiryDate='';

   String cardHolderName='';

   String cvvCode='';

   bool showBackView=false;

  

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
         expiryDate: expiryDate,
          cardHolderName: cardHolderName,
           cvvCode: cvvCode,
            showBackView: showBackView,
             onCreditCardWidgetChange: (value) {
               
             },),
      ],
    );
  }
}