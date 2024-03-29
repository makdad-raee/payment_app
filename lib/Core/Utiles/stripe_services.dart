import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_app/Core/Utiles/api_services.dart';
import 'package:payment_app/Core/Utiles/apis_keys.dart';
import 'package:payment_app/Features/Checkout/data/models/ephemeral_key_model/ephemeral_key_model.dart';
import 'package:payment_app/Features/Checkout/data/models/init_payment_sheet_input_model.dart';
import 'package:payment_app/Features/Checkout/data/models/payment_intent_input_model.dart';
import 'package:payment_app/Features/Checkout/data/models/payment_intent_model/payment_intent_model.dart';

class StripeServices {
  final ApiServices apiService = ApiServices();
  Future<PaymentIntentModel> creatPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiService.post(
        body: paymentIntentInputModel.toJson(),
        contentType: Headers.formUrlEncodedContentType,
        url: 'https://api.stripe.com/v1/payment_intents',
        token: ApiKeys.secretKeys);
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  Future initPaymentSheet(
      {required InitPaymentSheetInputModel initPaymentSheetInputModel}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
          customerEphemeralKeySecret: initPaymentSheetInputModel.clientSecret,
          customerId: initPaymentSheetInputModel.customerId,
          paymentIntentClientSecret:
              initPaymentSheetInputModel.ephemeralKeySecret,
              //allowsDelayedPaymentMethods: true,
          merchantDisplayName: 'makdad raee'),
    );
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var paymentIntentModel = await creatPaymentIntent(paymentIntentInputModel);
    var ephemeralKeyModel =
        await creatEphemeralKey(customerId: paymentIntentInputModel.customerId);
    var initPaymentSheetInputModel = InitPaymentSheetInputModel(
        clientSecret: paymentIntentModel.clientSecret!,
        customerId: paymentIntentInputModel.customerId,
        ephemeralKeySecret: ephemeralKeyModel.secret!);
    await initPaymentSheet(
        initPaymentSheetInputModel: initPaymentSheetInputModel);
    await displayPaymentSheet();
  }

  Future<EphemeralKeyModel> creatEphemeralKey(
      {required String customerId}) async {
    var response = await apiService.post(
        body: {
          'customer': customerId
        },
        headers: {
          'Authorization': "Bearer ${ApiKeys.secretKeys}",
          'Stripe-Version': '2023-08-16'
        },
        contentType: Headers.formUrlEncodedContentType,
        url: 'https://api.stripe.com/v1/ephemeral_keys',
        token: ApiKeys.secretKeys);
    var ephemeralKey = EphemeralKeyModel.fromJson(response.data);
    return ephemeralKey;
  }
}
