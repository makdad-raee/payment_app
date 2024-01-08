import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_app/Core/Utiles/api_services.dart';
import 'package:payment_app/Core/Utiles/apis_keys.dart';
import 'package:payment_app/Features/Checkout/data/models/payment_intent_input_model.dart';
import 'package:payment_app/Features/Checkout/data/models/payment_intent_model/payment_intent_model.dart';

class StripeServices {
  final ApiServices apiService = ApiServices();
 Future<PaymentIntentModel>  creatPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiService.post(
        body: paymentIntentInputModel.toJson(),
        url: 'https://api.stripe.com/v1/payment_intents',
        token: ApiKeys.secretKeys);
        var paymentIntentModel=PaymentIntentModel.fromJson(response.data);
        return paymentIntentModel;
        
  }
  Future initPaymentSheet({required String paymentIntentClientSecret})async{
    Stripe.instance.initPaymentSheet(paymentSheetParameters: SetupPaymentSheetParameters(
      paymentIntentClientSecret: paymentIntentClientSecret,
      merchantDisplayName: 'makdad raee'
    ));
  }
  Future displayPaymentSheet()async{
    Stripe.instance.presentPaymentSheet();
  }
  
}
