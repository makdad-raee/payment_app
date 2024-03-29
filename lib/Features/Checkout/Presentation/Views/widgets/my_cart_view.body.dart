import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/Core/Utiles/widgets/cutom_button.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/manger/cubit/payment_cubit.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/order_info_item.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/payment_method_button_sheet.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/total_price.dart';
import 'package:payment_app/Features/Checkout/data/repos/check_out_repo_impl.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 18,
          ),
          Expanded(child: Image.asset('assets/images/basket_image.png')),
          const SizedBox(
            height: 25,
          ),
          const OrderInfoItem(
            title: 'Order Subtotal',
            value: '\$42.97',
          ),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(title: 'Discount', value: '\$0'),
          const SizedBox(
            height: 3,
          ),
          const OrderInfoItem(title: 'Shipping', value: '\$8'),
          const SizedBox(
            height: 8,
          ),
          const Divider(
            thickness: 2,
            color: Color(0xFFC7C7C7),
          ),
          const SizedBox(
            height: 15,
          ),
          const TotalPrice(
            title: 'Total',
            value: '\$8',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
            text: 'Complete Payment',
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) => const PaymentDetails(),
              // ),
              // );
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return BlocProvider(
                      create: (context) => PaymentCubit(CheckoutRepoImpl()),
                      child: const PaymentMethodeButtonSheet());
                },
              );
            },
          ),
          const SizedBox(
            height: 14,
          )
        ],
      ),
    );
  }
}
