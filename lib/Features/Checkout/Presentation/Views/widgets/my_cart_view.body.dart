import 'package:flutter/material.dart';
import 'package:payment_app/Core/Utiles/styles.dart';

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
          Image.asset('assets/images/basket_image.png'),
          const SizedBox(height: 25,),
         const OrderInfoItem(title: 'Order Subtotal',value:'\$42.97', ),
         const SizedBox(height: 3,),
        const  OrderInfoItem(title:'Discount' ,value:'\$0' ),
        const SizedBox(height: 3,),
         const OrderInfoItem(title: 'Shipping',value: '\$8'),
        ],
      ),
    );
  }
}

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({super.key, required this.title, required this.value});
  final String title,value;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(title,
            textAlign: TextAlign.center, style: Styles.textStyle18),
        const Spacer(),
         Text(
          value,
          textAlign: TextAlign.center,
          style: Styles.textStyle18
        )
      ],
    );
  }
}
