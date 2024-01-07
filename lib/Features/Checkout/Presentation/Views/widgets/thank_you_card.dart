import 'package:flutter/material.dart';
import 'package:payment_app/Core/Utiles/styles.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/card_info_widget.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/payment_item_info.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/total_price.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xFFEDEDED),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 16, left: 22, right: 22),
        child: Column(children: [
          const Text(
            'Thank you!',
            textAlign: TextAlign.center,
            style: Styles.textStyle25,
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            'Your transaction was successful',
            textAlign: TextAlign.center,
            style: Styles.textStyle20,
          ),
          const SizedBox(
            height: 42,
          ),
          const PaymmentItemInfo(title: 'Date', value: '01/24/2023'),
          const SizedBox(
            height: 20,
          ),
          const PaymmentItemInfo(title: 'Time', value: '10:15 AM'),
          const SizedBox(
            height: 20,
          ),
          const PaymmentItemInfo(title: 'To', value: 'Sam Louis'),
          const Divider(
            thickness: 2,
            height: 60,
          ),
          const TotalPrice(title: 'Total', value: '\$50.97'),
          const SizedBox(
            height: 30,
          ),
          const CardInfoWidget(),
          const Spacer(),
          Row(
            children: [
              const Icon(
                FontAwesomeIcons.barcode,
                size: 64,
              ),
              const SizedBox(
                width: 75,
              ),
              Container(
                width: 113,
                height: 58,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 1.50, color: Color(0xFF34A853)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                  child: Text(
                    'PAID',
                    textAlign: TextAlign.center,
                    style: Styles.textStyle24.copyWith(
                      color: const Color(0xFF34A853),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: ((MediaQuery.of(context).size.height * 0.2 + 20) / 2) - 29,
          ),
        ]),
      ),
    );
  }
}
