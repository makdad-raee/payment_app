import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:payment_app/Core/Utiles/styles.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/my_cart_view.body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.transparent,
      leading: Center(
        child: SvgPicture.asset(
          'assets/images/Arrow 1.svg',
          
        ),
      ),
      elevation: 0,
      centerTitle: true,
      title: const Text(
        'My Cart',
        textAlign: TextAlign.center,
        style: Styles.textStyle25,
      ),
    ),
    body:const MyCartViewBody(),);
  }
}
