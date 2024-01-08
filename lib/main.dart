import 'package:flutter/material.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/my_cart_view.dart';

void main() {
  runApp(const CheckOutApp());
}

class CheckOutApp extends StatelessWidget {
  const CheckOutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}

// //create Payment intent (amount , currency)
// Future<void> initPaymentSheet() async {
//   try {
//     // 2. initialize the payment sheet
//     await Stripe.instance.initPaymentSheet(
//       paymentSheetParameters: SetupPaymentSheetParameters(
//         // Main params
//         merchantDisplayName: 'Flutter Stripe Store Demo',
//         paymentIntentClientSecret: data['paymentIntent'],
//         // Customer keys
//         customerEphemeralKeySecret: data['ephemeralKey'],
//         customerId: data['customer'],
//         // Extra options
//         applePay: const PaymentSheetApplePay(
//           merchantCountryCode: 'US',
//         ),
//         googlePay: const PaymentSheetGooglePay(
//           merchantCountryCode: 'US',
//           testEnv: true,
//         ),
//         style: ThemeMode.dark,
//       ),
//     );
//     setState(() {
//       _ready = true;
//     });
//   } catch (e) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('Error: $e')),
//     );
//     rethrow;
//   }
// }
